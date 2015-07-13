//
// MathHelper.h
// 

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

#include <vector>

#define _USE_MATH_DEFINES
#include <cmath>
#pragma warning( disable : 4244)
#pragma warning( disable : 4305)

#define EPSILON 0.00001f
//#define PI 3.1415926
#define TwoPI 6.28318531
#define Deg2Rad(Ang) ((double)( Ang * M_PI / 180.0 ))
#define Rad2Deg(Ang) ((double)( Ang * 180.0 / M_PI ))
#define Sq(X) (X*X)
#define Eq(X,Y,Z) fabs((X-Y)<Z)
#define ZeroTolerance (0.00000001)

/** round number n to d decimal points */
#define fround(n,d)  (floor((n)/pow(.1,(d))+.5)*pow(.1,(d)))
		//#define dot(u,v)   ((u).x * (v).x + (u).y * (v).y + (u).z * (v).z)
		//#define norm(v)    sqrt(Dot(v,v))  // norm = length of vector
		// #define d(u,v)     norm(u-v)       // distance = norm of difference



namespace M
{

	inline double	atan360(double y1, double x1)				{ double a (atan2(y1,x1));	return (a<0)?	a+ TwoPI : a; }

	template <class T>
	inline int sign(T x) { return x > 0 ? 1 : x < 0 ? -1 : 0;}

	template <class T>
	inline T abs(T x) {  return x < 0 ? -x : x; }

	template <class T>
	inline T Min(T x, T y) {  return x < y ? x : y; }

	template <class T>
	inline T Max(T x, T y) {  return x > y ? x : y; }

	//Generate a random number between 0 and 1 return a uniform number in [0,1].
	inline double unifRand()							{ return rand() / double(RAND_MAX); }
	inline double unifRand(double a, double b)			{ return (b-a)*unifRand() + a; }
	inline double unifRandPlusMinus()					{ return unifRand(-1.0,1.0); }
	inline void seed(unsigned int n=1)					{ srand(n); }


	// double sqrt(double f) { if(f<0) throw; else return ::sqrt(f); }

	// =========================================
	// 3-vector
	// =========================================
	class Vector
	{

		double _x, _y, _z, w; // Position & weight
	public:
		double &x() { return _x; } double &y() { return _y; }  double &z() { return _z; } 

		Vector(): _x( 0 ), _y( 0 ), _z( 0 ), w(1) {} // Default constructor
		Vector( double x, double y, double z ) : _x( x ), _y( y ), _z( z ), w(1) 	{} // Element constructor
		Vector( double x[3]) : _x( x[0] ), _y( x[1] ), _z( x[2] ), w(1) 	{} // Element constructor
		Vector( double x, double y, double z, double w ) : _x( x ), _y( y ), _z( z ), w(w) 	{} // Element constructor
		Vector( const Vector& a )	: _x( a._x ), _y( a._y ), _z( a._z ) , w(a.w)	{}// Copy constructor

		double & operator ()(int n)						{ return ( (n==0)?  _x : (n==1) ? _y: _z ); }
		double & operator [](int n)						{ return ( (n==0)?  _x : (n==1) ? _y: _z ); }
		Vector &operator += ( const Vector &src )		{ _x += src._x; _y += src._y; _z += src._z; w += src.w; return *this; }
		Vector operator + ( const Vector &src ) const	{ Vector tmp( *this ); return ( tmp += src ); }
		Vector &operator -= ( const Vector &src )		{ _x -= src._x; _y -= src._y; _z -= src._z; w -= src.w; return *this; }
		Vector operator - ( const Vector &src ) const	{ Vector tmp( *this ); return ( tmp -= src ); }
		Vector operator - () const						{ return Vector(-_x,-_y,-_z); }
		Vector &operator *= ( const double src )		{ _x *= src; _y *= src; _z *= src;  w *= src; return *this; }
		Vector operator * ( const double src ) const	{ Vector tmp( *this ); return ( tmp *= src ); }
		Vector &operator /= ( const double src )		{ _x /= src; _y /= src; _z /= src; w /= src; return *this; }
		Vector operator / ( const double src ) const	{ Vector tmp( *this ); return ( tmp /= src ); }
		bool operator == ( const Vector& b) const		{ return ((*this)-b).Norm() < EPSILON; }
		bool operator != ( const Vector& b) const		{ return !(((*this)-b).Norm() < EPSILON); }
		//bool operator == ( const Vector& b) const { return _x==b._x && _y==b._y && _z==b._z; }
		friend double Dot( Vector& a,  Vector& b ) { return a.x()*b.x() + a.y()*b.y() + a.z()*b.z(); }
		inline double Norm() const						{ return _x*_x + _y*_y + _z*_z; } // Norm (len^2)
		inline double Len() const						{ return sqrt(Norm()); } // Length of the vector
		Vector Normalize()								{ Vector tmp( *this ); return ( tmp /= Len() ); }
		Vector Inverse()								{ Vector tmp( *this ); return ( tmp /= Norm() ); }
		Vector(const std::vector<double> &src): w(1) 
		{ 
			if (src.size() > 0)  _x = src[0]; 
			if(src.size() > 1)  _y = src[1]; 
			if(src.size() > 2)  _z = src[2]; 
		}
		Vector &operator = ( const std::vector<double> &src ) 
		{ 
			if (src.size() > 0)  _x = src[0]; 
			if(src.size() > 1)  _y = src[1]; 
			if(src.size() > 2)  _z = src[2]; 
			return *this; 
		}
		
		std::string ToString(std::string sep=_T(" ")){ std::stringstream s; s.precision(4); s<< _x<<sep<<_y<<sep<< _z; return  s.str() ; }
		friend std::ostream& operator<<(std::ostream& output, Vector &  _x)
		{
			std::stringstream s; s.precision(4);
			output << _x.ToString() << "\n";
			return output;
		}
	};

	inline Vector	Cross(Vector &a, Vector &b )				{ return Vector( a.y()*b.z() - a.z()*b.y(), a.z()*b.x() - a.x()*b.z(), a.x()*b.y() - a.y()*b.x() ); }
	inline Vector	Direction(Vector   v1, Vector   v2)			{ return v2 - v1; }
	inline double	Displacement(Vector & u ,Vector &v)			{ return Vector(u-v).Len(); } 
	inline Vector	Lerp( Vector &v1,  Vector &v2, double scale){ Vector tmp1( v1 ); Vector tmp2(v2-v1); tmp2*=scale; return tmp1+=tmp2; }
	inline bool	Perpendicular(Vector &v1, Vector &v2)		{ return (fabs(Dot(v1,v2))<EPSILON); }
	inline bool	Parallel( Vector &v1,  Vector &v2)			{ return ( Vector (v1.Normalize() - v2.Normalize()).Len()<EPSILON); }
	inline Vector	Projection( Vector & v1,  Vector  &v2)		{ Vector tmp1(v2.Normalize()); return tmp1*=Dot(  v1, tmp1);}
	inline Vector	CartPlaneProj( Vector &v,  Vector &normal)	{ return v-Projection(v, normal);}
	inline Vector	VMin(Vector & v1, Vector & v2)				{ return Vector((v1.x()<v2.x())? v1.x() : v2.x(), (v1.y()<v2.y())? v1.y() : v2.y(), (v1.z()<v2.z())? v1.z() : v2.z()); }
	inline Vector	VMax(Vector & v1, Vector & v2)				{ return Vector((v1.x()>v2.x())? v1.x() : v2.x(), (v1.y()>v2.y())? v1.y() : v2.y(), (v1.z()>v2.z())? v1.z() : v2.z()); }

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

		//#define dot(u,v)   ((u).x * (v).x + (u).y * (v).y + (u).z * (v).z)
		//#define norm(v)    sqrt(Dot(v,v))  // norm = length of vector
		// #define d(u,v)     norm(u-v)       // distance = norm of difference
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

		//#define dot(u,v)   ((u).x * (v).x + (u).y * (v).y + (u).z * (v).z)
		//#define norm(v)    sqrt(dot(v,v))  // norm = length of vector
		// #define d(u,v)     norm(u-v)       // distance = norm of difference
		return  p0 + v * b ;
	}

	// make this a template type?
	inline Vector operator * ( const double src, const Vector& v ) { Vector tmp( v ); return ( tmp *= src ); }


	// Given points a, b and c form the line segments ab, bc and ac. If ab + bc = ac then the three points are collinear.
	inline Collinear(M::Vector a, M::Vector b, M::Vector c)
	{
		// This assume b between a c
		return  Cross(b-c, a-b)< 0.0001;

	}
#include <ostream>

#define _USE_MATH_DEFINES
#include <math.h>
#include <gsl/gsl_vector.h>
#include <gsl/gsl_multifit_nlin.h>
#include <gsl/gsl_linalg.h>
#include <gsl/gsl_fit.h>
#include <gsl/gsl_statistics.h>

#define EPSILON 0.00001f
#define ASSERT(X)


#if 0
	// Highly problematic approach to encapsulating gsl vector and offering some inline operators to
	// make readable math equations. Have alternative that might have been easier.
	class Vector : public gsl_vector
	{
	public:
		gsl_vector *_v;
		double _data[20];
		int _n; // dimension

		Vector(int n=3): _n(n)
		{
			Init(3); 			 
		}
		Vector(Vector &v )
		{
			Init(3); 
			x()=v.x();
			y()=v.y();
			z()=v.z();
		}
		Vector(double _x, double _y, double _z)
		{
			Init(3); 
			x()=_x;	y()=_y;	z()=_z;
		}
		void Init(int n=3)
		{
			_n=this->size=n;
			this->stride=1;
			data=_data; _v=this;
			//_v=gsl_vector_alloc (_n);
		}
		~Vector() 
		{
			//gsl_vector_free(_v); 
		}

		//his function adds the elements of vector b to the elements of vector a, a'_i = a_i + b_i. The two vectors must have the same length
		Vector operator + ( const Vector &src ) {Vector tmp(*this); gsl_vector_add (tmp._v, src._v);  return tmp; }
		Vector operator - ( const Vector &src ) {Vector tmp(*this); gsl_vector_sub (tmp._v, src._v);  return tmp; }
		Vector operator * ( const Vector &src ) {Vector tmp(*this); gsl_vector_mul (tmp._v, src._v);  return tmp; }
		Vector operator / ( const Vector &src ) {Vector tmp(*this); gsl_vector_div (tmp._v, src._v);  return tmp; }
		Vector operator * ( double d  ) {Vector tmp(*this); gsl_vector_scale (tmp._v, d);  return tmp; }
		Vector operator / ( double d  ) {Vector tmp(*this); gsl_vector_scale (tmp._v, 1.0/d);  return tmp; }

		Vector &operator /= ( double d ) { gsl_vector_scale (_v, 1.0/d);  return *this; }
		Vector &operator *= ( double d ) { gsl_vector_scale (_v, d);  return *this; }
		Vector &operator += ( double d ) { gsl_vector_add_constant (_v, d);  return *this; }
		Vector &operator -= ( double d ) { gsl_vector_add_constant (_v, -d);  return *this; }
		bool operator == ( const Vector& b)  { return ((*this)-b).Norm() < EPSILON; }
		bool operator != ( const Vector& b)  { return !(((*this)-b).Norm() < EPSILON); }
		inline double Norm() { return x()*x() + y()*y() + z()*z(); } // Norm (len^2)
		inline double Len()  { return sqrt(Norm()); } // Length of the vector
		Vector  & Normalize(){  double l=Len(); gsl_vector_scale (_v, 1.0/l);  return *this;  }

		double& x(){ ASSERT(_v!=NULL); return _v->data[0]; }
		double& y(){ ASSERT(_v!=NULL); return _v->data[1]; }
		double& z(){ ASSERT(_v!=NULL); return _v->data[2]; } //  n>2 gsl_vector_get(_v,0); }

		friend std::ostream& operator<<(std::ostream& output, Vector &  X)
		{
			for (int j = 0; j <X.size; j++)
				output << StdStringFormat("%8.4f ", X._data[j]);
			output << "\n";

			return output;
		}
		// This is dangerous
	private:
		//operator gsl_vector * (  ) { return _v; }
		//Vector(gsl_vector * v)
		//{
		//	Init(3); 
		//	x()= gsl_vector_get(v,0);
		//	y()= gsl_vector_get(v,1);
		//	z()= gsl_vector_get(v,2);
		//}

	};

	inline double Dot(Vector& a, Vector& b ) { return a.x()*b.x() + a.y()*b.y() + a.z()*b.z(); }
	inline Vector Cross( Vector &a, Vector &b) { return Vector( a.y()*b.z() - a.z()*b.y(), a.z()*b.x() - a.x()*b.z(), a.x()*b.y() - a.y()*b.x() ); }
	inline double Displacement(Vector & u ,Vector &v) { return Vector(u-v).Len(); } 
	//	inline Vector  Projection( Vector & v1,  Vector  &v2) { Vector tmp1(v2.Normalize()); return tmp1*=Dot(  v1, tmp1);}
	//	inline Vector  CartPlaneProj( Vector &v,  Vector &normal) { return v-Projection(v, normal);}
	inline Vector Lerp( Vector &v1,  Vector &v2, double scale) 
	{ 
		Vector tmp1( v1 ); Vector tmp2(v2);
		tmp2=v2-v1; tmp2*=scale; return Vector(tmp1+tmp2);
	}
	inline bool Perpendicular(Vector &v1,  Vector &v2) { return (fabs(Dot(v1,v2))<EPSILON); }
	inline bool Parallel( Vector &v1,  Vector &v2) { return ( Vector (v1.Normalize() - v2.Normalize()).Len()<EPSILON); }
	// v1 - line start, v2 line end p-point measured from line


#endif

	inline double Mean(double * vals, int size, int stride=1 ) 
	{ 
		gsl_stats_mean(vals, stride, size);
	}

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
	inline  M::Vector ComputeLeastSquaresBestFitLine(std::vector<std::vector<double>> pts, double & goodness, double & a, double &b, double &c)
	{

		// If pts.size < 3 problems...
		double xhat=0, yhat=0, zhat=0;
		std::vector<double> x,y,z;

#if 1
		// maybe try pointer with stride of 3
		for(int i=0;i<pts.size(); i++)
		{
			xhat+=pts[i][0];
			yhat+=pts[i][1];
			zhat+=pts[i][2];
		}
		xhat/=pts.size();
		yhat/=pts.size();
		zhat/=pts.size();

		gsl_matrix *X = gsl_matrix_alloc (pts.size(), 3); //A
		gsl_matrix *V = gsl_matrix_alloc (3, 3); //V must be square matrix
		gsl_vector * work = gsl_vector_alloc (3);
		gsl_vector * S = gsl_vector_alloc (3);
		for (int i = 0; i <pts.size(); i++)
		{
			// gsl_matrix_set sets the value of the (i,j)th element of a matrix m to x. 
			gsl_matrix_set (X, i, 0, pts[i][0]-xhat);  // Xi-Xhat
			gsl_matrix_set (X, i, 1, pts[i][1]-yhat);   // Yi-Yhat
			gsl_matrix_set (X, i, 2, pts[i][2]-zhat);             // Zi-Zhat
		}

		/*Compute the SVD of you covariance matrix of your points in order to get the eigenvalues and vectors at once
		The singular values are equal to your eigen values if the matrix is symmetric, as your covariance matrix is.
		The eigen vector corresponding to the larges eigen value is the dominant axis*/
		//http://www.gnu.org/software/gsl/manual/html_node/Singular-Value-Decomposition.html
		int n = gsl_linalg_SV_decomp (X,  V, S,  work);

		//OutputDebugString("X "); OutputDebugString(DumpMatrix(X).c_str());
		//OutputDebugString("V "); OutputDebugString(DumpMatrix(V).c_str());
		//OutputDebugString("S "); OutputDebugString(DumpVector(S).c_str());

		// Line is centroid (xhat, yhat, zhat) + direction(gsl_matrix_set (V,  [0,1,2], 0) {column 0}
		a=gsl_matrix_get (V, 0, 0); b=gsl_matrix_get (V, 1, 0); c=gsl_matrix_get (V, 2, 0);
		M::Vector centroid=Vector(xhat, yhat, zhat);

		goodness = S->data[1] + S->data[2]; // minimum mean square orthogonal distance to the line.

		gsl_matrix_free(X);
		gsl_matrix_free(V);
		gsl_vector_free(S);
		gsl_vector_free(work);
		return centroid;
#endif
		return M::Vector(0,0,0);
	}


	//inline std::string DumpVector(gsl_vector *X)
	//{
	//	std::string str;
	//	for (int j = 0; j <X->size; j++)
	//		str+=StdStringFormat("%8.4f ", gsl_vector_get (X, j));
	//	return str;
	//}
	inline std::string DumpMatrix(gsl_matrix *X)
	{
		std::string str;
		for (int i = 0; i < X->size1; i++)
		{
			for (int j = 0; j <X->size2; j++)
			{
				str+=StdStringFormat("%8.4f ", gsl_matrix_get (X, i, j));
			}
			str+="\n";
		}
		return str;
	}
	inline std::string DumpPoints(std::vector<std::vector<std::vector<double>>> pts)
	{
		std::string str;
		for(int ii=0; ii< pts.size(); ii++)
			for(int jj=0; jj< pts[ii].size(); jj++)
				str+=StdStringFormat("%8.4f %8.4f %8.4f\n", pts[ii][jj][0], pts[ii][jj][1],pts[ii][jj][2]);
		return str;
	}

};
