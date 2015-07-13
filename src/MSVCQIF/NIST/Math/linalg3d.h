//
// linalg3d.h
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

// Math defines, Arrays, Vector, Matrix, Plane, Circle

#pragma once
#define _USE_MATH_DEFINES
#include <cmath>
#include <limits>
#include <string>
#include <vector>
#include <numeric>
#include <algorithm> 
#include <stdarg.h>
#include <assert.h> 
#include <iterator>   // ostream_iterator 
#include <iostream> // cout
// When in doubt check Numerical recipes: http://www.nr.com/public-domain.html 
// And check out: http://people.sc.fsu.edu/~jburkardt/cpp_src/cpp_src.html

//#include "StdStringFcn.h"  // Include for debugging purposes
#ifndef StrFormat
inline std::string StrFormat(const char* format, ...)
{
	va_list ap;
	va_start(ap, format);

	int m;
	size_t n= strlen(format) + 1028;
	std::string tmp(n,'0');	


	// Kind of a bogus way to insure that we don't
	// exceed the limit of our buffer
	while((m=_vsnprintf(&tmp[0], n-1, format, ap))<0)
	{
		n=n+1028;
		tmp.resize(n,'0');
	}
	va_end(ap);
	return tmp.substr(0,m);

}
#define StrFormat  StdStringFormat
#endif

#pragma warning( disable : 4244)
#pragma warning( disable : 4305)

#define EPSILON 0.00001f
#define PI 3.1415926
#define TwoPI 6.28318531
#define Deg2Rad(Ang) ((REAL)( Ang * PI / 180.0 ))
#define Rad2Deg(Ang) ((REAL)( Ang * 180.0 / PI ))
#define Sq(X) ((X)*(X))
#define Eq(X,Y,Z) ((X-Y)<Z)
//#define sign(x) ((x>=0)?  1 : -1 );
#define ZeroTolerance (0.00000001)
#define fround(n,d)  (floor((n)/pow(.1,(d))+.5)*pow(.1,(d)))

#define REAL float
namespace M
{
	/** round number n to d decimal points */

	inline double	atan360(double y1, double x1)	{ double a (atan2(y1,x1));	return (a<0)?	a+ TwoPI : a; }

	template <typename T>
	int sign(T x) { return x > 0 ? 1 : x < 0 ? -1 : 0;}
	
	template<class T>
	inline const T SIGN(const T &a, const T &b) //http://www.nr.com/pubdom/nrutil_nr.h.txt
	{return b >= 0 ? (a >= 0 ? a : -a) : (a >= 0 ? -a : a);}

	template <typename T>
	T abs(T x) {  return x < 0 ? -x : x; }

	template <typename T>
	T Min(T x, T y) {  return x < y ? x : y; }

	template <typename T>
	T Max(T x, T y) {  return x > y ? x : y; }

	//Generate a random number between 0 and 1 return a uniform number in [0,1].
	inline double unifRand()							{ return rand() / double(RAND_MAX); }
	inline int unifRand(double n)					    { return n*unifRand() ; }
	inline double unifRand(double a, double b)			{ return (b-a)*unifRand() + a; }
	inline double unifRandPlusMinus()					{ return unifRand(-1.0,1.0); }
	inline void seed(unsigned int n=1)					{ srand(n); }

	// Array of REALs methods
	inline REAL Mean(const std::vector<REAL> &pts) 	{ return std::accumulate(pts.begin(), pts.end(), (REAL) 0.0) / (double) pts.size(); }
	inline REAL Sum(const std::vector<REAL> &pts) 	{ return std::accumulate(pts.begin(), pts.end(), (REAL) 0.0) ; }
	inline REAL SqSum(const std::vector<REAL> &pts, REAL accum=0)  {std::for_each (std::begin(pts), std::end(pts), [&](const REAL d) {  accum += d*d;}	); return accum; }
	inline REAL SqMeanSum(const std::vector<REAL> &pts) 	
	{ 
		REAL mean = Mean(pts);
		std::vector<double> diff(pts.size());
		REAL accum=0;
		std::for_each (std::begin(pts), std::end(pts), [&](const REAL d) {  accum += (d - mean) * (d - mean);});
		return accum;
		//std::transform(pts.begin(), pts.end(), diff.begin(), std::bind2nd(std::minus<double>(), mean));
		//return std::inner_product(diff.begin(), diff.end(), diff.begin(), 0.0);
	}
	inline REAL Variance(const std::vector<REAL> &pts) 	{return SqMeanSum(pts) / pts.size(); }
	inline REAL SampleVariance(const std::vector<REAL> &pts) 	{return SqMeanSum(pts) / (pts.size()-1); }
	inline REAL SD(const std::vector<REAL> &pts) 	{return std::sqrt(SqMeanSum(pts) / pts.size()); }
	inline REAL SampleSD(const std::vector<REAL> &pts) 	{return std::sqrt(SqMeanSum(pts) / (pts.size()-1)); }
	inline REAL pythag(REAL a, REAL b)
	{
		REAL at = fabs(a); REAL bt = fabs(b);
		if (at > bt)  {
			REAL ct = bt/at;
			return at*sqrt(1.0+ct*ct);
		} else if (bt != 0.0)  {
			REAL ct = at/bt;
			return bt*sqrt(1.0+ct*ct);
		} else return 0.0;
	}
	//inline REAL CopyPts2Array(const std::vector<REAL> &pts, REAL *arr) { std::copy(pts.begin(), pts.end(), arr);}
	inline REAL CoutPts(const std::vector<REAL> &pts) {  std::copy(pts.begin(), pts.end(), std::ostream_iterator<REAL>(std::cout, "\n"));}
	inline REAL AddNoise(std::vector<REAL> &pts, REAL noise_level) 
	{
		for (size_t i=0; i<pts.size(); i++) 
			pts[i] += unifRand(-noise_level, noise_level);		
	}
	inline std::vector<REAL> GenerateNoise(size_t N, REAL min, REAL max) 
	{
		std::vector<REAL> pts;
		for (size_t i=0; i<N; i++) 	pts.push_back(unifRand(min, max));		
		return pts;
	}
	// REAL sqrt(REAL f) { if(f<0) throw; else return ::sqrt(f); }
	namespace SliceEnum
	{	typedef enum {X=1, Y=2, Z=3, XY=3, XZ=5, YZ=6, ZX=7} ; // change with vector array of ordering, 0 if none.
	};
	// =========================================
	// 3-vector
	// =========================================
	template<class T = REAL>
	class Vec
	{
	public:
		union {
			struct{	REAL x, y, z, w; };
			REAL data[4];
		};
		Vec(): x( 0 ), y( 0 ), z( 0 ), w(1) {} // Default constructor
		Vec( REAL x, REAL y, REAL z ) : x( x ), y( y ), z( z ), w(1) 	{} // Element constructor
		Vec( REAL x, REAL y, REAL z, REAL w ) : x( x ), y( y ), z( z ), w(w) 	{} // Element constructor
		Vec( const Vec& a )	: x( a.x ), y( a.y ), z( a.z ) , w(a.w)	{}// Copy constructor
		REAL & operator ()(int n) { return ( (n==0)?  x : (n==1) ? y: z ); }
		Vec &operator += ( const Vec &src ) { x += src.x; y += src.y; z += src.z; w += src.w; return *this; }
		Vec operator + ( const Vec &src ) const { Vec tmp( *this ); return ( tmp += src ); }
		Vec &operator -= ( const Vec &src ) { x -= src.x; y -= src.y; z -= src.z; w -= src.w; return *this; }
		Vec operator - ( const Vec &src ) const { Vec tmp( *this ); return ( tmp -= src ); }
		Vec operator - () const { return Vec(-x,-y,-z); }
		Vec &operator *= ( const REAL src ) { x *= src; y *= src; z *= src;  w *= src; return *this; }

		Vec operator * ( const REAL src ) const { 
			Vec tmp( *this ); 
			 tmp *= src;
			return tmp ; 
		}

		Vec &operator /= ( const REAL src ) { x /= src; y /= src; z /= src; w /= src; return *this; }
		Vec operator / ( const REAL src ) const { Vec tmp( *this ); return ( tmp /= src ); }
		bool operator == ( const Vec& b) const { return ((*this)-b).Norm() < EPSILON; }
		//	REAL & operator () (int i) { REAL & ptrD(x); return ptrD+=(sizeof(REAL)*i); }
		//bool operator == ( const Vec& b) const { return x==b.x && y==b.y && z==b.z; }
		inline REAL Norm() const { return x*x + y*y + z*z; } // Norm (len^2)
		inline REAL Len() const { return sqrt(Norm()); } // Length of the vector
		Vec Normalize(){ Vec tmp( *this ); return ( tmp /= Len() ); }
		Vec Inverse(){ Vec tmp( *this ); return ( tmp /= Norm() ); }
		
		Vec Slice(int nBits) { 
			Vec tmp(*this);   
			if (nBits==XZ) tmp.y=tmp.z; 
			else if (nBits==YZ) { tmp.x=tmp.y; tmp.y=tmp.z; }
			else if(nBits==ZX) { tmp.y=tmp.x; tmp.x=tmp.z; }
			tmp.z=0;
			return tmp;
		}
		Vec Unslice(int nBits) { 
			Vec tmp(*this);   
			if (nBits==XZ) tmp.z=tmp.y; 
			else if (nBits==YZ) { tmp.y=tmp.x; tmp.z=tmp.y; }
			return tmp;
		} 
		std::string ToString(){ return StrFormat( "%f %f %f %f", x,y,z,w); }
		REAL &operator [] (int index) {assert(index>=0); assert(index < 4); return data[index]; }

	};
	template<class T>
	Vec<T> Noise(Vec<T>  min, Vec<T>  max){ Vec<T>  noise(unifRand(min.x, max.x),unifRand(min.y, max.y),unifRand(min.z, max.z)); return noise; }
	template<class T>
	Vec<T>  Noise(REAL min, REAL max){ Vec<T>  noise(unifRand(min, max),unifRand(min, max),unifRand(min, max)); return noise; }
	template<class T>
	inline Vec<T> Origin( ) { return Vec<T>(0,0,0); }

	template<class T>
	inline T Dot(const  Vec<T>& a,const  Vec<T>& b ) { return a.x*b.x + a.y*b.y + a.z*b.z; }
	template<class T>
	inline Vec<T> Cross( const Vec<T> &a, const Vec<T> &b ) { return Vec<T>( a.y*b.z - a.z*b.y, a.z*b.x - a.x*b.z, a.x*b.y - a.y*b.x ); }
	template<class T>
	inline T Displacement(Vec<T> & u, Vec<T> &v) { return Vec<T>(u-v).Len(); } 
	template<class T>
	inline Vec<T>  Projection( Vec<T> & v1,  Vec<T>  &v2) { Vec<T> tmp1(v2.Normalize()); return tmp1*=Dot(  v1, tmp1);}
	template<class T>
	inline Vec<T>  CartPlaneProj( Vec<T> &v,  Vec<T> &normal) { return v-Projection(v, normal);}
	template<class T>
	inline Vec<T>  Lerp( Vec<T> &v1,  Vec<T> &v2, T scale) { Vec<T> tmp1( v1 ); Vec tmp2(v2-v1); tmp2*=scale; return tmp1+=tmp2; }
	template<class T>
	inline bool Perpendicular(const Vec<T> &v1, const Vec<T> &v2) { return (Dot(v1,v2)==0); }
	template<class T>
	inline bool Parallel( Vec<T> &v1,  Vec<T> &v2) { return ( Vec<T> (v1.Normalize() - v2.Normalize()).Len()<EPSILON); }
	template<class T>
	inline REAL atan360(T y1, T x1){ T a (atan2(y1,x1));	return (a<0)?	a+ TwoPI : a; }
	template<class T>
	inline Vec<T> VMin(Vec<T> & v1, Vec<T> & v2){ return Vec<T>((v1.x<v2.x)? v1.x : v2.x, (v1.y<v2.y)? v1.y : v2.y, (v1.z<v2.z)? v1.z : v2.z); }
	template<class T>
	inline Vec<T> VMax(Vec<T> & v1, Vec<T> & v2){ return Vec<T>((v1.x>v2.x)? v1.x : v2.x, (v1.y>v2.y)? v1.y : v2.y, (v1.z>v2.z)? v1.z : v2.z); }
	template<class T>
	inline bool VGt(Vec<T> & v1, Vec<T> & v2){ return (v1.x>v2.x) || (v1.y>v2.y) || (v1.z>v2.z); }
	template<class T>
	inline bool VLt(Vec<T> & v1, Vec<T> & v2){ return (v1.x<v2.x) || (v1.y<v2.y) || (v1.z<v2.z); }
	template<class T>
	inline std::string ToString(std::vector<Vec<T>> & v){ std::string tmp; for(size_t i=0; i<v.size(); i++) tmp+=v[i].ToString(); return tmp; }

	// make this a template type?
	template<class T>
	inline Vec<T> operator * ( const T src, const Vec<T>& v ) { 
		Vec<T> tmp( v ); 
		tmp *= src ;
		return  tmp;
	}

	typedef Vec<REAL> Vector;

	template<class T>
	std::vector<REAL> Slice(std::vector<Vec<T>> &pts, int s)
	{
		std::vector<REAL> pts2;
		if(s==SliceEnum::X) std::transform(pts.begin(), pts.end(), std::back_inserter(pts2), [](M::Vec<T> const& v) { return v.x; });
		if(s==SliceEnum::Y) std::transform(pts.begin(), pts.end(), std::back_inserter(pts2), [](M::Vec<T> const& v) { return v.y; });
		if(s==SliceEnum::Z) std::transform(pts.begin(), pts.end(), std::back_inserter(pts2), [](M::Vec<T> const& v) { return v.z; });
		return pts2;
	}
	template<class T>
	std::vector<REAL&> SliceRef(std::vector<Vec<T>> &pts, int s)
	{
		std::vector<REAL&> pts2;
		if(s==SliceEnum::X) std::transform(pts.begin(), pts.end(), std::back_inserter(pts2), [](M::Vec<T> const& v) { return v.x; });
		if(s==SliceEnum::Y) std::transform(pts.begin(), pts.end(), std::back_inserter(pts2), [](M::Vec<T> const& v) { return v.y; });
		if(s==SliceEnum::Z) std::transform(pts.begin(), pts.end(), std::back_inserter(pts2), [](M::Vec<T> const& v) { return v.z; });
		return pts2;
	}
	inline void AddNoise(std::vector<Vector> &pts, Vector minnoise_level,Vector maxnoise_level) 
	{
		for(size_t i=0; i<pts.size(); i++) pts[i]=pts[i]+ Noise(minnoise_level, maxnoise_level);
	}
	inline std::vector<Vector>  GenerateNoise(size_t N, Vector minnoise_level, Vector maxnoise_level) 
	{
		std::vector<Vector> pts;
		for(size_t i=0; i< N ; i++) pts[i]= Noise(minnoise_level, maxnoise_level);
		return pts;
	}	
	inline void AddNoise(std::vector<Vector> &pts, REAL min,REAL max) {	AddNoise(pts, Vector(min,min,min), Vector(max,max,max));}
	//inline std::vector<Vector>  GenerateNoise(size_t N, REAL min, REAL max) {return GenerateNoise(N, Vector(min,min,min), Vector(max,max,max));}
	
	template<class T>
	inline Vec<T> Mean(std::vector<Vec<T>> &pts) 
	{ 
		REAL xm  = std::accumulate(pts.begin(), pts.end(), (REAL) 0.0, [](REAL r, M::Vec<T> const& v) { return r+v.x; }) / (double) pts.size(); 
		REAL ym  = std::accumulate(pts.begin(), pts.end(), (REAL) 0.0, [](REAL r, M::Vec<T> const& v) { return r+v.y; }) / (double)  pts.size(); 
		REAL zm  = std::accumulate(pts.begin(), pts.end(), (REAL) 0.0, [](REAL r, M::Vec<T> const& v) { return r+v.z; }) / (double)  pts.size(); 
		return Vector(xm, ym, zm);
	}
	inline double PointDistanceToLine(Vector x1, Vector x2, Vector p)
	{
		return  Cross( x2-x1 , x1-p).Len()/(x2-x1).Len();
	}
	// Input:  a Point P and a Line L (p1-p0) 
	inline double PointDistanceToLine2(M::Vector p1, M::Vector p0, M::Vector P)
	{
		M::Vector v = p1-p0;
		M::Vector w = P - p0;

		double c1 = Dot(w,v);
		double c2 = Dot(v,v);
		double b = c1 / c2;
		M::Vector Pb = p0 + v * b ;
		return   sqrt(Dot(P-Pb, P-Pb)); // d(P, Pb);
	}
	inline Vector ClosestPointToLine(M::Vector p1, M::Vector p0, M::Vector P)
	{
		M::Vector v = p1-p0;
		M::Vector w = P - p0;

		double c1 = Dot(w,v);
		double c2 = Dot(v,v);
		double b = c1 / c2;
		return  p0 + v * b ;
	}
	// Given points a, b and c form the line segments ab, bc and ac. If ab + bc = ac then the three points are collinear.
	inline bool Collinear(M::Vector a, M::Vector b, M::Vector c)
	{
		// 1)find the difference between the points P2-P1 and P3-P1 
		// 2) cross product of vectors
		// 3) len(cross)< threshold
		return  Cross(b-c, a-c).Norm() < 0.0001;
	}


	// =========================================
	// 4 x 4 matrix
	// =========================================
	template<class T = REAL>
	class Mtx
	{
	public:

		const static int order=4;
		// 4x4, [[0 1 2 3] [4 5 6 7] [8 9 10 11] [12 13 14 15]]
		union{
			struct { T data[ 16 ]; };
			struct { Vec<T> rows[4]; };
		};
		// Creates an identity matrix
		Mtx()
		{
			Load( 1,0,0,0, 0,1,0,0, 0,0,1,0, 0,0,0,1 );
			}
		Mtx( const Mtx& a )	{ memcpy(this,&a,sizeof(Mtx));}
		Mtx(T d11, T d12, T d13, T d14,
			T d21, T d22, T d23, T d24,
			T d31, T d32, T d33, T d34,
			T d41, T d42, T d43, T d44)
		{ 
			Load (d11,  d12,  d13, d14,d21,  d22,  d23,  d24, d31,  d32,  d33,  d34, d41,  d42,  d43,  d44); 
		}
		// Operators
		Vec<T> & operator [] (int index) {assert(index>=0&&index<4); return rows[index]; }
		/* take c-th column of m, put in v */
		Vec<T> Col(int c){	return Vec<T>(data[0*order+c], data[1*order+c], data[2*order+c], data[3*order+c]);}

		Mtx & operator /=(T d) { for ( int i = 0; i < order*order; ++i ) data[i] /= d;  return *this; }
		Mtx & operator *=(T d) { for ( int i = 0; i < order*order; ++i ) data[i] *= d;  return *this; }
		//!!
		T operator () ( unsigned column, unsigned row )	{ return data[ column + ( row * 4 ) ]; }
		T & operator ()(int row, int col) { return data[row * 4 + col]; }
		bool operator == ( Mtx<T> &m )	{ for(int i=0; i<16; i++) if(m.data[i] !=this->data[i]) return false; return true;}

		void Load(T d11, T d12, T d13, T d14,
			T d21, T d22, T d23, T d24,
			T d31, T d32, T d33, T d34,
			T d41, T d42, T d43, T d44)
		{ 
			 data[0]=d11;  data[1]=d12;  data[2]=d13;  data[3]=d14;
			 data[4]=d21;  data[5]=d22;  data[6]=d23;  data[7]=d24;
			 data[8]=d31;  data[9]=d32; data[10]=d33; data[11]=d34;
			data[12]=d41; data[13]=d42; data[14]=d43; data[15]=d44;
		}

		// Returns the transpose of this matrix
		Mtx Transpose() const;

		T Determinant();

		std::string ToString(){ return StrFormat("%f %f %f %f \n%f %f %f %f \n%f %f %f %f \n%f %f %f %f \n",
			data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7],data[8],data[9],data[10],data[11],data[12],data[13],data[14],data[15]);
		}
		Mtx Rotation() { Mtx tmp(*this);  tmp.data[3]=tmp.data[7]=tmp.data[11]=0; tmp.data[15]=1;  return tmp; }
		Vector Translation() { Vector tmp( data[3],data[7],data[11],data[15]);  return tmp; }
		bool IsIdentity() { 
			static Mat<T> I( 1,0,0,0, 0,1,0,0, 0,0,1,0, 0,0,0,1 );
			return  return *this == I;  // memcmp(this,&IdentityMatrix,sizeof(T)*16)==0; 
		} 
		void Diagonal(Vec<T> v) { for(int i=0; i< order; i++) rows[i][i]=v[i]; }

	};

	typedef Mtx<REAL> Matrix;

	// Creates a scale matrix
	template<class T>
	inline Mtx<T> Scale( const Vec<T> &scale );

	template<class T>
	inline Mtx<T> Scale( const T &scale ){ return Scale(Vec<T>(scale,scale,scale)); }

	// Creates a translation matrix
	template<class T>
	inline Mtx<T> Translate( const Vec<T> &moveAmt );

	// Creates an euler rotation matrix (by X-axis)
	template<class T>
	inline Mtx<T> RotateX( T ang );

	// Creates an euler rotation matrix (by Y-axis)
	template<class T>
	inline Mtx<T> RotateY( T ang );

	// Creates an euler rotation matrix (by Z-axis)
	template<class T>
	inline Mtx<T> RotateZ( T ang );

	// Creates an euler rotation matrix (pitch/head/roll (x/y/z))
	template<class T>
	inline Mtx<T> Rotate( T pitch, T head, T roll );

	// Creates an arbitraty rotation matrix
	template<class T>
	inline Mtx<T> MakeRotationMatrix( const Vec<T> &dir, const Vec<T> &up );

	// Transforms a vector by a matrix
	template<class T>
	inline Vec<T> operator * ( const Vec<T>& v, const Mtx<T>& m );

	// Transforms a vector by a matrix
	template<class T>
	inline Vec<T> operator * ( const Mtx<T>& m, const Vec<T>& v );

	// Multiplies a matrix by another matrix
	template<class T>
	inline Mtx<T> operator * ( const Mtx<T>& a, const Mtx<T>& b );



	template<class T>
	inline Mtx<T> Inverse(Mtx<T> &A) ;

	template<class T>
	inline Mtx<T> MakeQRotationAroundAxis(Vec<T> v, T dRadianAngle);

	/* Perspective is along the z-axis with the eye at +z. d =Perspective distance		*/  
	template<class T>
	inline Mtx<T>	Perspective	(Mtx<T> &m, T d);

#include "linalg3dImpl.h"
#if 1
	template<class T>
	extern bool Solve3 (Mtx<T> & A, Vec<T> & B,  Vec<T> & X);
#endif

	// =========================================
	// Plane
	// =========================================
	template<class T = REAL>
	class PlaneT
	{
	public:
		enum PLANE_EVAL
		{
			EVAL_COINCIDENT,
			EVAL_IN_BACK_OF,
			EVAL_IN_FRONT_OF,
			EVAL_SPANNING
		};

		Vec<T> normal;
		REAL d;

		// Default constructor
		PlaneT(): normal( 0,1,0 ), d( 0 ) {}

		// Vector form constructor
		//   normal = normalized normal of the plane
		//   pt = any point on the plane
		PlaneT( const Vec<T>& normal, const Vec<T>& pt )
			: normal( normal ), d( Dot( -normal, pt )) 
		{}

		// Copy constructor
		PlaneT( const PlaneT<T>& a )
			: normal( a.normal ), d( a.d ) 
		{}

		// Classifies a point (<0 == back, 0 == on plane, >0 == front)
		T classify( const Vec<T>& pt ) const
		{
			T f = Dot( normal, pt ) + d;
			return ( f > -EPSILON && f < EPSILON ) ? 0 : f;
		}
	};
#if 0
	template<class T>
	inline bool equals(T val, T eqval, T tol)
	{
		// http://stackoverflow.com/questions/17404513/floating-point-equality-and-tolerances

		return fabs(val - eqval) < tol; //does not work well for the general case where a_float might be very small or might be very large
		// return fabs(val - eqval) <= fabs(eqval * tol);
	}
#endif
	// https://randomascii.wordpress.com/2012/02/25/comparing-floating-point-numbers-2012-edition/
	template<class T> 
	bool equals(T x, T y, int ulp)
	{
		if( std::abs(x-y) <= std::numeric_limits<T>::epsilon() * std::max(std::abs(x), std::abs(y)) * ulp ){
			return true; 
		}else{
			return false;
		}         
	}

	//----------------------------------------------------------------------------
	/** Compute the factorial.
	* give - an object who's type has operator++, operator=, operator<=, and operator*= defined.
	*        it should be a single valued scalar type such as an int, float, REAL etc....
	* NOTE: This could be faster with a lookup table, but then wouldn't work templated : kevin
	*/
	template<class T>
	inline T factorial(T rhs)
	{
		T lhs = (T)1;

		for( T x = (T)1; x <= rhs; ++x )
		{
			lhs *= x;
		}

		return lhs;
	}
	/** @} */

	/**
	* clamp "number" to a range between lo and hi
	*/
	template <class T>
	inline T clamp( T number, T lo, T hi )
	{
		if (number > hi) number = hi;
		else if (number < lo) number = lo;
		return number;
	}

	/** @ingroup Interp
	* @name Scalar type interpolation (for doubles, floats, etc...)
	* @{
	*/

	/** Linear Interpolation between number [a] and [b].
	*  lerp=0.0 returns a, lerp=1.0 returns b
	*  @pre use REAL or float only...
	*/
	template <class T, typename U>
	inline void lerp( T& result, const U& lerp, const T& a, const T& b )
	{
		T size = b - a;
		result = ((U)a) + (((U)size) * lerp);
	}
	/** @} */

	/**
	* Uses the quadratic formula to compute the 2 roots of the given 2nd degree
	* polynomial in the form of Ax^2 + Bx + C.
	*
	* @param r1   set to the first root
	* @param r2   set to the second root
	* @param a    the coefficient to x^2
	* @param b    the coefficient to x^1
	* @param c    the coefficient to x^0
	*
	* @return  true if both r1 and r2 are real; false otherwise
	*/
	template <class T>
	inline bool quadraticFormula(T& r1, T& r2, const T& a, const T& b, const T& c)
	{
		const T q = b*b - T(4)*a*c;

		// the result has real roots
		if (q >= 0)
		{
			const T sq = gmtl::Math::sqrt(q);
			const T d = T(1) / (T(2) * a);
			r1 = (-b + sq) * d;
			r2 = (-b - sq) * d;
			return true;
		}
		// the result has complex roots
		else
		{
			return false;
		}
	}
	//
	// 2 and 3D Circle Functionality
	///////////////////////////////////////////////////////////////////////////
	/****************************************************************************
	Least squares fit of circle to set of points.
	by Dave Eberly (eberly@cs.unc.edu or eberly@ndl.com)
	ftp://ftp.cs.unc.edu/pub/users/eberly/magic/circfit.c
	---------------------------------------------------------------------------
	Input:  (x_i,y_i), 1 <= i <= N, where N >= 3 and not all points
	are collinear
	Output:  circle center (a,b) and radius r

	Energy function to be minimized is

	E(a,b,r) = sum_{i=1}^N (L_i-r)^2

	where L_i = |(x_i-a,y_i-b)|, the length of the specified vector.
	Taking partial derivatives and setting equal to zero yield the
	three nonlinear equations

	E_r = 0:  r = Average(L_i)
	E_a = 0:  a = Average(x_i) + r * Average(dL_i/da)
	E_b = 0:  b = Average(y_i) + r * Average(dL_i/db)

	Replacing r in the last two equations yields

	a = Average(x_i) + Average(L_i) * Average(dL_i/da) = F(a,b)
	b = Average(y_i) + Average(L_i) * Average(dL_i/db) = G(a,b)

	which can possibly be solved by fixed point iteration as

	a_{n+1} = F(a_n,b_n),  b_{n+a} = G(a_n,b_n)

	with initial guess a_0 = Average(x_i) and b_0 = Average(y_i).
	Derivative calculations show that

	dL_i/da = (a-x_i)/L_i,  dL_i/db = (b-y_i)/L_i.

	---------------------------------------------------------------------------
	WARNING.  I have not analyzed the convergence properties of the fixed
	point iteration scheme.  In a few experiments it seems to converge
	just fine, but I do not guarantee convergence in all cases.
	****************************************************************************/
	inline int  CircleFit(int N, double * x, double * y, double *pa, double *pb, double *pr)
	{
		/* user-selected parameters */
		const int maxIterations = 256;
		const double tolerance = 1e-06;

		double a, b, r;

		/* compute the average of the data points */
		int i, j;
		double xAvr = 0.0;
		double yAvr = 0.0;

		for (i = 0; i < N; i++) {
			xAvr += x[i]; 
			yAvr += y[i]; 
		}
		xAvr /= N;
		yAvr /= N;

		/* initial guess */
		a = xAvr;
		b = yAvr;

		for (j = 0; j < maxIterations; j++) {
			/* update the iterates */
			double a0 = a;
			double b0 = b;

			/* compute average L, dL/da, dL/db */
			double LAvr = 0.0;
			double LaAvr = 0.0;
			double LbAvr = 0.0;

			for (i = 0; i < N; i++) {
				double dx = x[i]  - a;
				double dy = y[i] - b;
				double L = sqrt(dx * dx + dy * dy);
				if (fabs(L) > tolerance) {
					LAvr += L;
					LaAvr -= dx / L;
					LbAvr -= dy / L;
				}
			}
			LAvr /= N;
			LaAvr /= N;
			LbAvr /= N;

			a = xAvr + LAvr * LaAvr;
			b = yAvr + LAvr * LbAvr;
			r = LAvr;

			if (fabs(a - a0) <= tolerance && fabs(b - b0) <= tolerance)
				break;
		}

		*pa = a;
		*pb = b;
		*pr = r;

		return (j < maxIterations ? j : -1);
	}
	/***
	radiustranslation = radiusPt - Origin(); 
	p = scale*(pt-radiustranslation)
	*/
	inline std::vector<Vector> CircleScale(REAL scale, Vector radiustranslation, std::vector<Vector> pts)
	{
		Matrix s=Scale(scale);
		std::vector<Vector> p;
		for(size_t i=0; i< pts.size(); i++)
		{
			Vector v = pts[i] - radiustranslation;
			p.push_back(v*s);
		}
		return p;
	}
	inline std::vector<Vector> CircleGenerator(size_t N, REAL radius, Vector centroid)
	{
		//  x=rcosθ and y=rsinθ
		std::vector<Vector> p;
		for(size_t i=0; i< N; i++)
		{
			REAL r = unifRand(0,TwoPI);
			Vector v(radius * cos(r), radius * sin(r), 0);
			p.push_back(v+centroid);
		}
		return p;
	}

	inline Vector Centroid(std::vector<Vector> &pts)  
	{
		Vector centroid(0,0,0);

		for(size_t i=0; i< pts.size(); i++)
		{
			centroid.x += pts[i].x;
			centroid.y += pts[i].y;
			centroid.z += pts[i].z;
		}
		return centroid / pts.size();
	}
	// http://stackoverflow.com/questions/2298390/fitting-a-line-in-3d
	// xbar,ybar,zbar is the centroid of the data 
	/**
	matrix A whose entries are:
	sum_i x[i]*x[i],    sum_i x[i]*y[i],    sum_i x[i]
	sum_i x[i]*y[i],    sum_i y[i]*y[i],    sum_i y[i]
	sum_i x[i],         sum_i y[i],         n
	Also compute the 3 element vector b:

	{sum_i x[i]*z[i],   sum_i y[i]*z[i],    sum_i z[i]}
	Then solve Ax = b for the given A and b. The three components of the solution vector are the coefficients to the least-square fit plane {a,b,c}.
	*/
	inline Vector FitLine(std::vector<Vector> &pts)
	{
		Matrix A;
		A.Load(Sq(Sum(Slice(pts,SliceEnum::X))),
			Sum(Slice(pts,SliceEnum::X))*Sum(Slice(pts,SliceEnum::Y)),
			Sum(Slice(pts,SliceEnum::X)),
			0,
			Sum(Slice(pts,SliceEnum::X))*Sum(Slice(pts,SliceEnum::Y)),
			Sq(Sum(Slice(pts,SliceEnum::Y))),
			Sum(Slice(pts,SliceEnum::Y)),
			0,
			Sum(Slice(pts,SliceEnum::X)),
			Sum(Slice(pts,SliceEnum::Y)),
			pts.size(),
			0,
			0,0,0,1.0);
		Vector b(Sum(Slice(pts,SliceEnum::X))*Sum(Slice(pts,SliceEnum::Z)),
			Sum(Slice(pts,SliceEnum::Y))*Sum(Slice(pts,SliceEnum::Z)),
			Sum(Slice(pts,SliceEnum::Z)),1.0);
		Vector x(0,0,0);
		Solve3 (A, b,  x);
		return x;
	}
	void svdcmp(M::Matrix &a, M::Vector &w, M::Matrix &v);
	void householder(M::Matrix m, M::Matrix &R, M::Matrix &Q);
	bool Householder2(M::Matrix A, M::Vector &r, M::Matrix &a);
	void LeastSqRegression2D(std::vector<REAL> x, std::vector<REAL> y, REAL &a, REAL &b);
	void LinearRegression3D(std::vector<Vector> pts, REAL &a, REAL &b, REAL &u, REAL &v, REAL &w);
};

