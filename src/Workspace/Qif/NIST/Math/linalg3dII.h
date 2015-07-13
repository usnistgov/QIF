// 
// linalg3dII.h
//

// This software was developed by U.S. Government employees as part of
// their official duties and is not subject to copyright. No warranty implied 
// or intended.

// Helix Quaterian

#pragma once
#include "linalg3d.h"

template<class T = REAL>
class HelixT
{
public:
	/* data */
	Vec  start, end, center, normal, rTan, rPerp, rHelix;
	T radius, spiral, angle;
	int turn;
	T  startingangle, endingangle;

	HelixT() {};
	HelixT(Vec &vstart, Vec &vend, Vec & vcenter, Vec & vnormal, int turn)
	{  Init(vstart, vend, vcenter,  vnormal, turn); }

	//L = sqrt(H^2 + (2 pi R)^2)  Hyptoeneuse analogy -> helix height per arc circumference 
	T GetArcLength() 	{ return hypot(rHelix.Len(), radius*angle); }
	Vec GetArcPoint(T dDist) { return ArcPoint((dDist/GetArcLength()) * angle); }

	/* turn: 0 = 0..360, 1 = 360..720, -1 = 0..-360, -2 = -360..-720, etc. 	*/
	bool Init(Vec &vstart, Vec &vend,  Vec &vcenter, Vec &vnormal, int nTurn)
	{
		Vec rEnd;
		Vec v;

		// Initialize arc
		start=vstart;center=vcenter;end=vend; normal=vnormal.Normalize(); turn=nTurn;

		if(normal.Len()< EPSILON)
			return E_FAIL;

		/*The center vector and start vector are assumed to be in the plane defined by the normal vector. 
		If this is not true, then it will be made true by moving the center vector onto the plane.
		*/
		center=Projection(start-center, normal)+ center; 

		/* normalize and redirect normal vector based on turns. If turn is
		less than 0, point normal vector in other direction and make turn positive, -1 -> 0, -2 -> 1, etc. */
		if (turn < 0)
		{
			turn = -1 - turn;
			normal*= -1.0; // pmCartScalMult(circle->normal, -1.0, &circle->normal);
		}

		/* radius - assume start and center coplanar*/
		radius= Displacement(start, center);//  pmCartCartDisp(start.tran, circle->center, &circle->radius);

		/* vector in plane of circle from center to start, magnitude radius */
		rTan=start-center;	//pmCartCartSub(start.tran, circle->center, &circle->rTan);

		/* vector in plane of circle perpendicular to rTan, magnitude radius */
		rPerp=Cross(normal, rTan); 	//pmCartCartCross(circle->normal, circle->rTan, &circle->rPerp);

		/* do rHelix, rEnd */
		rHelix=end-center; // pmCartCartSub(end.tran, circle->center, &circle->rHelix);
		rEnd = CartPlaneProj(rHelix, normal); // pmCartPlaneProj(circle->rHelix, circle->normal, &rEnd);
		spiral=  rEnd.Len() - radius; // pmCartMag(rEnd, &circle->spiral);
		// spiral -= radius;
		rHelix=rHelix-rEnd; //pmCartCartSub(circle->rHelix, rEnd, &circle->rHelix);
		// pmCartNorm(rEnd, &rEnd);
		rEnd=rEnd.Normalize() * radius;  //pmCartScalMult(rEnd, circle->radius, &rEnd);

		REAL d =rEnd.Len();

		if(d == 0.0)
		{
			rEnd+=normal*EPSILON; // pmCartCartAdd(rEnd, v, &rEnd);
		}

		/* angle */
		REAL dDot = Dot(rTan, rEnd)/ (radius * radius); //pmCartCartDot(circle->rTan, rEnd, &dot);
		if(dDot>1.0)
		{
			angle=0;
		}
		else if(dDot<-1.0)
		{
			angle=PI;
		}
		else
		{
			angle=acos(dDot);
		}

		/* now angle is in range 0..PI . Check if cross is antiparallel to
		normal. If so, true angle is between PI..2PI. Need to subtract
		from 2PI. */
		v= Cross(rTan, rEnd); // pmCartCartCross(circle->rTan, rEnd, &v);
		dDot=Dot(v, normal); // pmCartCartDot(v, circle->normal, &d);
		if (dDot < 0.0)
			angle = 2*PI - angle;
		if (angle > -(EPSILON) && angle < (EPSILON) )
		{
			angle = TwoPI; 
		}

		/* now add more angle for multi turns */
		if (turn > 0)
		{
			angle += turn * TwoPI;
		}

		return S_OK;
	}

	/*
	ArcPoint returns the vector to the point at the given angle along
	the circle. If the circle is a helix or spiral or combination, the
	point will include interpolation off the actual circle.
	*/
	Vec ArcPoint(T dAngle)
	{
		/* compute components rel to center */
		Vec par(rTan*cos(dAngle));
		Vec perp(rPerp*sin(dAngle));

		/* add to get radius vector rel to center */
		Vec  point(par+perp);

		T scale;
		if (this->angle == 0.0)
			return point;

		/* get scale for spiral, helix interpolation */
		scale = dAngle / angle;

		/* add scaled vector in radial dir for spiral */
		par = point.Normalize(); // pmCartUnit(point->tran, &par);
		par*=(scale * spiral); // pmCartScalMult(par, scale * circle->spiral, &par);
		point+= par; // pmCartCartAdd(point->tran, par, &point->tran);

		/* add scaled vector in helix dir - e.g., 0..difference in z*/
		point+=rHelix*scale; // pmCartScalMult(circle->rHelix, scale, &perp);
		// pmCartCartAdd(point->tran, perp, &point->tran);

		/* add to center vector for final result */
		point+=center; // pmCartCartAdd(circle->center, point->tran, &point->tran);

		return point;
	}
	bool Compute2DArc(                           
		int move,           /* either -1 (cw arc) or 1 (ccw arc)             */
		Vec &  current,   /* current point                */
		Vec &  end,   /* current point                */
		T radius,  /* radius of arc                                    */
		T &center_x, 
		T &center_y,
		int & turn)
	{
		Vec  mid((end+current)/2.0);      /* point P */
		T abs_radius(fabs(radius));  /* absolute value of given radius */
		T half_length; /* distance from M to end point   */
		T offset;      /* distance from M to center      */
		T theta;       /* angle of line from M to center */
		T turn2;       /* absolute value of half of turn */

		if ((end-current).Len()< EPSILON)
			return E_FAIL;

		half_length = hypot((mid.x - end.x), (mid.y - end.y));

		//CHK(((half_length/abs_radius) > (1+TINY)),
		//    NCE_ARC_RADIUS_TOO_SMALL_TO_REACH_END_POINT);

		if ((half_length/abs_radius) > (1-EPSILON))
			half_length = abs_radius; /* allow a small error for semicircle */

		/* check needed before calling asin   */
		if (((move == -1) && (radius > 0)) ||	((move == 1) && (radius < 0)))
			theta = atan2((end.y - current.y), (end.x - current.x)) - TwoPI;
		else
			theta = atan2((end.y - current.y), (end.x - current.x)) + TwoPI;

		turn2 = asin (half_length/abs_radius);
		offset = abs_radius * cos(turn2);
		center_x = mid.x + (offset * cos(theta));
		center_y = mid.y + (offset * sin(theta));
		turn = (move == -1) ? -1 : 1;

		return S_OK;
	}

};
typedef HelixT<REAL> Helix; 

template<class T = REAL>
class Quat
{
public:
	//typedef REAL T;
	T x,y,z,w;
	Quat(){	 x = y = z = (T)0.0; w = (T)1.0; }
	Quat( const T& i, const T& j, const T& k, const T& s ) {x = i;  y = j; z =k ;  w = s;}
	Quat( const Vec<T>& v, const T& s ) {  x = v.x;  y = v.y; z =v.z ;  w = s; }
	Quat &operator *= ( const REAL src ) { x *= src; y *= src; z *= src; w *= src; return *this; }
	Quat operator * ( const REAL src ) const { Quat tmp( *this ); return ( tmp *= src ); }
	Quat& operator+=( const Quat& a) { x+=a.x; y+=a.y; z+=a.z; w+=a.w; return *this;}
	Quat operator+( const Quat& a) {Quat tmp(*this);  return (tmp+=a);}
	Quat operator *( const Quat& a) 
	{ 
		Quat tmp; 
		tmp.w = (a.w*w) - (a.x*x) - (a.y*y) - (a.z*z);

		tmp.x = (a.w*x) + (a.x*w) + (a.y*z) - (a.z*y);
		tmp.y     = (a.w*y) + (a.y*w) + (a.z*x) - (a.x*z);
		tmp.z      = (a.w*z) + (a.z*w) + (a.x*y) - (a.y*x);
	}
#if 0
	if (qout->s >= 0.0)
	{
		qout->x = q1.s * q2.x + q1.x * q2.s + q1.y * q2.z - q1.z * q2.y;
		qout->y = q1.s * q2.y - q1.x * q2.z + q1.y * q2.s + q1.z * q2.x;
		qout->z = q1.s * q2.z + q1.x * q2.y - q1.y * q2.x + q1.z * q2.s;
	}
	else
	{
		qout->s *= -1;
		qout->x = - q1.s * q2.x - q1.x * q2.s - q1.y * q2.z + q1.z * q2.y;
		qout->y = - q1.s * q2.y + q1.x * q2.z - q1.y * q2.s - q1.z * q2.x;
		qout->z = - q1.s * q2.z - q1.x * q2.y + q1.y * q2.x - q1.z * q2.s;
	}
#endif
	Vec<T> operator *(const Vec<T> & v2)
	{
		Vec<T> c, tmp;
		Quat  q1(*this);

		c.x = q1.y * v2.z  -  q1.z * v2.y;
		c.y = q1.z * v2.x  -  q1.x * v2.z;
		c.z = q1.x * v2.y  -  q1.y * v2.x;

		tmp.x = v2.x + 2.0 * (q1.w * c.x + q1.y * c.z - q1.z * c.y);
		tmp.y = v2.y + 2.0 * (q1.w * c.y + q1.z * c.x - q1.x * c.z);
		tmp.z = v2.z + 2.0 * (q1.w * c.z + q1.x * c.y - q1.y * c.x);
	}

	Quat slerp(Quat & qa, Quat & qb, REAL t) {
		// quaternion to return
		Quat qm ;

		// Calculate angle beteen them.
		REAL costheta = qa.w * qb.w + qa.x * qb.x + qa.y * qb.y + qa.z * qb.z;
		REAL theta = acos(costheta);

		// if theta = 0 then return qa
		if (fabs(theta) < 0.01){
			qm.w = qa.w;qm.x = qa.x;qm.y = qa.y;qm.z = qa.z;
			return qm;
		}
		// Calculate temporary values.
		REAL sinTheta = sqrt(1.0 - costheta*costheta);
		// if theta*2 = 180 degrees then result is undefined
		if (fabs(sinTheta) < 0.01){
			qm.w = (qa.w * 0.5 + qb.w * 0.5);
			qm.x = (qa.x * 0.5 + qb.x * 0.5);
			qm.y = (qa.y * 0.5 + qb.y * 0.5);
			qm.z = (qa.z * 0.5 + qb.z * 0.5);
			return qm;
		}
		T ratioA = sin((1 - t) * theta) / sinTheta;
		T ratioB = sin(t * theta) / sinTheta;

		//calculate Quaternion.
		qm.w = (qa.w * ratioA + qb.w * ratioB);
		qm.x = (qa.x * ratioA + qb.x * ratioB);
		qm.y = (qa.y * ratioA + qb.y * ratioB);
		qm.z = (qa.z * ratioA + qb.z * ratioB);
		return qm;
	}
	void Quat::toEuler(Vec<T>& euler) const
	{
		const T sqw = w*w;
		const T sqx = x*x;
		const T sqy = y*y;
		const T sqz = z*z;
		const T test = 2.0 * (y*w - x*z);

		if (equals<T>(test, 1.0, 0.000001))
		{
			// heading = rotation about z-axis
			euler.z = (T) (-2.0*atan2(x, w));
			// bank = rotation about x-axis
			euler.x = 0;
			// attitude = rotation about y-axis
			euler.y = (T) (PI/2.0);
		}
		else if (equals<T>(test, -1.0, 0.000001))
		{
			// heading = rotation about z-axis
			euler.z = (T) (2.0*atan2(x, w));
			// bank = rotation about x-axis
			euler.x = 0;
			// attitude = rotation about y-axis
			euler.y = (T) (PI/-2.0);
		}
		else
		{
			// heading = rotation about z-axis
			euler.z = (T) atan2((T) 2.0 * (x*y +z*w),(T) (sqx - sqy - sqz + sqw));
			// bank = rotation about x-axis
			euler.x = (T) atan2((T) 2.0 * (y*z +x*w),(T) (-sqx - sqy + sqz + sqw));
			// attitude = rotation about y-axis
			euler.y = (T) asin( clamp<T>(test, -1.0, 1.0) );
		}
	}
};
typedef Quat<REAL> Quaterion; 

template<class T>
inline std::string ToString(Quat<T> &q){ return StrFormat("%f i%f j%f k%f\n", q.w, q.x,q.y,q.z); }

template<class T>
inline Quaterion Conjugate(Quat<T> &q) { Quat<T tmp(q); tmp.x-=q.x; tmp.y-=q.y;tmp.z-=q.z; return tmp; }

template<class T >
inline Quat<T> Inverse(Quat<T>  &q) { Quat<T> tmp(q);  T invs = sqrt(Sq(q.x) + Sq(q.y)+Sq(q.z)+Sq(q.w)); tmp*=1/invs; return tmp;  }
//	q = cos(a/2) + i ( x * sin(a/2)) + j (y * sin(a/2)) + k ( z * sin(a/2))
// Thanks to http://www.euclideanspace.com/maths/geometry/rotations/conversions/quaternionToMatrix/index.htm

template<class T>
inline Mtx<T> Quat2Mtx(Quaterion &q)
{
	Mtx<T> m;

	// Faster code (without sqrt) below
	T sqw = q.w*q.w;    
	T sqx = q.x*q.x;    
	T sqy = q.y*q.y;    
	T sqz = q.z*q.z;
	// invs (inverse square length) is only required if quaternion is not already normalised    
	T invs = 1 / (sqx + sqy + sqz + sqw) ;  

	m(0,0) = ( sqx - sqy - sqz + sqw)*invs ; // since sqw + sqx + sqy + sqz =1/invs*invs    
	m(1,1)= (-sqx + sqy - sqz + sqw)*invs ;    
	m(2,2) = (-sqx - sqy + sqz + sqw)*invs ;   

	T tmp1 = q.x*q.y;    
	T tmp2 = q.z*q.w;   
	m(1,0) = 2.0 * (tmp1 + tmp2)*invs ;    
	m(0,1)   = 2.0 * (tmp1 - tmp2)*invs ;        

	tmp1 = q.x*q.z;    tmp2 = q.y*q.w;    
	m(2,0) = 2.0 * (tmp1 - tmp2)*invs ;    
	m(0,2)  = 2.0 * (tmp1 + tmp2)*invs ;    
	tmp1 = q.y*q.z;    
	tmp2 = q.x*q.w;    
	m(2,1) = 2.0 * (tmp1 + tmp2)*invs ;    
	m(1,2) = 2.0 * (tmp1 - tmp2)*invs ;      
	return m;
}

template<class T>
inline Quat<T> Mtx2Quat( Mtx<T> & a)  
{
	Quat<T> q ;
	T trace = a(0,0) + a(1,1) + a(2,2) + 1.0;  
	if( trace > EPSILON ) 
	{
		T s = 0.5f / sqrt(trace);
		q.w = 0.25f / s;
		q.x = ( a(2,1) - a(1,2) ) * s;
		q.y = ( a(0,2) - a(2,0) ) * s;
		q.z = ( a(1,0) - a(0,1)) * s;
	} else
	{
		if ( a(0,0) > a(1,1) && a(0,0) > a(2,2) ) 
		{
			T s = 2.0f * sqrt( 1.0 + a(0,0) - a(1,1) - a(2,2));
			q.x = 0.25f * s;
			q.y = (a(0,1) + a(1,0) ) / s;
			q.z = (a(0,2) + a(2,0) ) / s;
			q.w = (a(1,2) - a(2,1) ) / s;    
		} 
		else if (a(1,1) > a(2,2)) 
		{
			T s = 2.0f * sqrt( 1.0 + a(1,1) - a(0,0) - a(2,2));
			q.x = (a(0,1) + a(1,0) ) / s;
			q.y = 0.25f * s;
			q.z = (a(1,2) + a(2,1) ) / s;
			q.w = (a(0,2) - a(2,0) ) / s;    
		} 
		else {
			T s = 2.0f * sqrt( 1.0 + a(2,2) - a(0,0) - a(1,1) );
			q.x = (a(0,2) + a(2,0) ) / s;
			q.y = (a(1,2) + a(2,1) ) / s;
			q.z = 0.25f * s;
			q.w = (a(0,1) - a(1,0 )) / s;
		}
	}
	return q;
}

// roll=heading, attitude = pitch, bank=yaw
template<class T>
inline Quat<T> RPYEuler2Quat(REAL roll, REAL pitch, REAL yaw) 
{    // Assuming the angles are in radians.    
	T c1 = cos(roll/2);    
	T s1 = sin(roll/2);    
	T c2 = cos(pitch/2);    
	T s2 = sin(pitch/2);    
	T c3 = cos(yaw/2);    
	T s3 = sin(yaw/2);
	T c1c2 = c1*c2;    
	T s1s2 = s1*s2;    
	T w =c1c2*c3 - s1s2*s3;
	T x =c1c2*s3 + s1s2*c3;
	T y =s1*c2*c3 + c1*s2*s3;
	T z =c1*s2*c3 - s1*c2*s3;
	return Quat<T>(x,y,z,w);
}





