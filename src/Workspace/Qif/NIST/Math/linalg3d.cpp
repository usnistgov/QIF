//
// linalg3d.cpp
//

#include "linalg3d.h"
using namespace M;

template <class T>
bool Solve3 (Mtx<T> & A, Vec<T> & B,  Vec<T> & X)
{
	Mtx<T> AInv; // [3][3];
	AInv(0,0) = A(1,1)*A(2,2)-A(1,2)*A(2,1);
	AInv(0,1) = A(0,2)*A(2,1)-A(0,1)*A(2,2);
	AInv(0,2) = A(0,1)*A(1,2)-A(0,2)*A(1,1);
	AInv(1,0) = A(1,2)*A(2,0)-A(1,0)*A(2,2);
	AInv(1,1) = A(0,0)*A(2,2)-A(0,2)*A(2,0);
	AInv(1,2) = A(0,2)*A(1,0)-A(0,0)*A(1,2);
	AInv(2,0) = A(1,0)*A(2,1)-A(1,1)*A(2,0);
	AInv(2,1) = A(0,1)*A(2,0)-A(0,0)*A(2,1);
	AInv(2,2) = A(0,0)*A(1,1)-A(0,1)*A(1,0);
	double fDet = A(0,0)*AInv(0,0) + A(0,1)*AInv(1,0) +
		A(0,2)*AInv(2,0);
	if (fabs(fDet) < ZeroTolerance)
	{
		return false;
	}

	double fInvDet = ((double)1.0)/fDet;
	for (int iRow = 0; iRow < 3; iRow++)
	{
		for (int iCol = 0; iCol < 3; iCol++)
		{
			AInv(iRow,iCol) *= fInvDet;
		}
	}

	X(0) = AInv(0,0)*B(0)+AInv(0,1)*B(1)+AInv(0,2)*B(2);
	X(1) = AInv(1,0)*B(0)+AInv(1,1)*B(1)+AInv(1,2)*B(2);
	X(2) = AInv(2,0)*B(0)+AInv(2,1)*B(1)+AInv(2,2)*B(2);
	return true;
}

#if 0
Mtx LU(Mtx& m, Vec& v)
{
	GULAPI bool LUDecomposition( Mtx& m, Vec& v,
		int *perm_sign, Ptr<int>& index )
	{
		double * vv;
		double big,sum,dummy,temp;
		int i,j,k,imax,n,d;

		n = nRowsCols - 1;
		vv=alloc(sizeof(double)*n); /* vv will contain pivot scale factor for each row */
		d = 1;

		for( i = 0; i <= n; i++ )
		{
			big = 0.0;
			for( j = 0; j <= n; j++ )
			{
				if( (temp = fabs(A[i][j])) > big )
					big = temp;
			}    
			if( big == 0.0 )  
				return false;

			vv[i] = (double)1 / big;
		}  
		for( j = 0; j <= n; j++ )    /* loop over columns */
		{
			for( i = 0; i < j; i++ )
			{
				sum = A[i][j];
				for( k = 0; k < i; k++ )
					sum -= A[i][k] * A[k][j];
				A[i][j] = sum;
			}
			big = 0.0;

			for( i = j; i <= n; i++ )
			{
				sum = A[i][j];
				for( k = 0; k < j; k++ )
					sum -= A[i][k] * A[k][j];
				A[i][j] = sum;

				if( (dummy = vv[i] * rtr<T>::fabs(sum)) >= big ) // search pivot element
				{
					big = dummy;
					imax = i;
				}
			}   
			if( j != imax ) /* pivot element not on diagonal */
			{
				for( k = 0; k <= n; k++ )
					Swap( A[imax][k], A[j][k] );  /* swap rows */

				d = -d;  
				vv[imax] = vv[j];  /* swap scale factors */
			}
			index[j] = imax;

			if( A[j][j] == 0.0 )
				A[j][j] = rtr<T>::tiny();

			if( j != n )          /* divide  by pivot element */
			{
				dummy = (T)1 / A[j][j];
				for( i = j+1; i <= n; i++ )
					A[i][j] *= dummy;
			}  
		}    /* next column */ 

		*perm_sign = d;
		return true;
	}  
}
#endif
#if 0
{
	int i,j,k,n=4;
	float a[10][10],b[10],x[10],l[10][10],z[10],u[10][10],sum;
	Mtx I;

	for(i=0; i<4; i++) b[i]=v(i);
	b[4]=0;

	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
			if(j<n) a[i][j]=m(i,j);
		}
	}
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
			if(i>j) u[i][j]=0;
			else if(i==j) l[i][j]=1;
			else l[i][j]=0;
		}
	}
	//--------------------------------------------------------------------
	//AX=B
	//Decomposition of A into L and U	
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
			sum=0;
			if(i<=j)
			{
				for(k=0;k<n;k++) 
					if(k!=i)
						sum=sum+l[i][k]*u[k][j];
				u[i][j]=a[i][j]-sum;
			}
			else 
			{
				for(k=0;k<n;k++)
					if(k!=j)
						sum=sum+l[i][k]*u[k][j];
				l[i][j]=(a[i][j]-sum)/u[j][j];
			}
		}
	}

	OutputDebugString("L=\n");
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
			StrFormat(StringEx("%f " , l[i][j]));
		OutputDebugString("\n");
	}

	OutputDebugString("U=\n");
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
			OutputDebugString(StrFormat("%f " , u[i][j]));
		OutputDebugString("\n");
	}

	//--------------------------------------------------------------------
	//Now LUX=B
	//i.e LZ=B
	//Obtaining Z by forward subtitiution 
	z[0]=b[0]/l[0][0];
	for(i=1;i<n;i++)
	{
		sum=0;
		for(j=0;j<i;j++)
		{
			sum=sum+z[j]*l[i][j];
		}
		z[i]=b[i]-sum;
	}

	OutputDebugString("Z=\n");
	for(i=0;i<n;i++)
	{
		OutputDebugString(StrFormat("%f " , z[i]));
	}
	OutputDebugString("\n");
	//--------------------------------------------------------------------
	//Now UX=Z
	//Finding X by backward substitution
	x[n-1]=z[n-1]/u[n-1][n-1];
	for(i=n-2;i>=0;i--)
	{
		sum=0;
		for(j=n-1;j>i;j--)
			sum=sum+x[j]*u[i][j];
		x[i]=(z[i]-sum)/u[i][i];

	}
	OutputDebugString("Solution:\n");
	for(i=0;i<n;i++)
		OutputDebugString(StrFormat("%f " , z[i]));
	OutputDebugString("\n");
	return Mtx();
}
#endif

#if 0
Matrix Matrix::Inverse() const {
	assert(m_r == m_c);

	Matrix res = *this;

	int i,j,k;
	/* Locations of pivot elements */
	int *pvt_i, *pvt_j;
	double pvt_val;                     /* Value of current pivot element */
	double hold;                        /* Temporary storage */

	pvt_i = new int[m_r];
	pvt_j = new int[m_r];

	for (k = 0; k < m_r; k++)
	{
		/* Locate k'th pivot element */
		pvt_val = res(k,k);            /* Initialize for search */
		pvt_i[k] = k;
		pvt_j[k] = k;
		for(i = k; i < m_r; i++)
			for(j = k; j < m_r; j++)
				if(fabs(res(i,j)) > fabs(pvt_val)) {
					pvt_i[k] = i;
					pvt_j[k] = j;
					pvt_val = res(i,j);
				}

				if(pvt_val==0) {
					/* Matrix is singular (zero determinant). */
					delete [] pvt_i;
					delete [] pvt_j;
					assert(!"Matrix is singular.");
				}

				/* "Interchange" rows (with sign change stuff) */
				i = pvt_i[k];
				if (i != k)                     /* If rows are different */
					for (j = 0; j < m_r; j++)
					{
						hold = -res(k,j);
						res(k,j) = res(i,j);
						res(i,j) = hold;
					}

					/* "Interchange" columns */
					j = pvt_j[k];
					if (j != k)                     /* If columns are different */
						for (i = 0; i < m_r; i++)
						{
							hold = -res(i,k);
							res(i,k) = res(i,j);
							res(i,j) = hold;
						}

						/* Divide column by minus pivot value */
						for (i = 0; i < m_r; i++)
							if (i != k)                   /* Don't touch the pivot entry */
								res(i,k) /= ( -pvt_val) ;  /* (Tricky C syntax for division) */

						/* Reduce the matrix */
						for (i = 0; i < m_r; i++)
						{
							hold = res(i,k);
							for (j = 0; j < m_r; j++)
								if ( i != k && j != k )   /* Don't touch pivot. */
									res(i,j) += hold * res(k,j);
						}

						/* Divide row by pivot */
						for (j = 0; j < m_r; j++)
							if (j != k)                   /* Don't touch the pivot! */
								res(k,j) /= pvt_val;

						/* Replace pivot by reciprocal (at last we can touch it). */
						res(k,k) = 1.0/pvt_val;
	}

	/* That was most of the work, one final pass of row/column interchange */
	/* to finish */
	for (k = m_r-2; k >= 0; k--)  /* Don't need to work with 1 by 1 corner */
	{
		i = pvt_j[k];        /* Rows to swap correspond to pivot COLUMN */
		if (i != k)                     /* If rows are different */
			for(j = 0; j < m_r; j++)
			{
				hold = res(k,j);
				res(k,j) = -res(i,j);
				res(i,j) = hold;
			}

			j = pvt_i[k];           /* Columns to swap correspond to pivot ROW */
			if (j != k)                     /* If columns are different */
				for (i = 0; i < m_r; i++)
				{
					hold = res(i,k);
					res(i,k) = -res(i,j);
					res(i,j) = hold;
				}
	}

	delete [] pvt_i;
	delete [] pvt_j;

	return res;
}


inline Mtx inverse4x4(Mtx &m1) {

	Mtx m;
	m(0,0) = m(1,2)*m(2,3)*m(3,1) - m(1,3)*m(2,2)*m(3,1) + m(1,3)*m(2,1)*m(3,2) - m(1,1)*m(2,3)*m(3,2) - m(1,2)*m(2,1)*m(3,3) + m(1,1)*m(2,2)*m(3,3);
	m(0,1) = m(0,3)*m(2,2)*m(3,1) - m(0,2)*m(2,3)*m(3,1) - m(0,3)*m(2,1)*m(3,2) + m(0,1)*m(2,3)*m(3,2) + m(0,2)*m(2,1)*m(3,3) - m(0,1)*m(2,2)*m(3,3);
	m(0,2) = m(0,2)*m(1,3)*m(3,1) - m(0,3)*m(1,2)*m(3,1) + m(0,3)*m(1,1)*m(3,2) - m(0,1)*m(1,3)*m(3,2) - m(0,2)*m(1,1)*m(3,3) + m(0,1)*m(1,2)*m(3,3);
	m(0,3) = m(0,3)*m(1,2)*m(2,1) - m(0,2)*m(1,3)*m(2,1) - m(0,3)*m(1,1)*m(2,2) + m(0,1)*m(1,3)*m(2,2) + m(0,2)*m(1,1)*m(2,3) - m(0,1)*m(1,2)*m(2,3);
	m(1,0) = m(1,3)*m(2,2)*m(3,0) - m(1,2)*m(2,3)*m(3,0) - m(1,3)*m(2,0)*m(3,2) + m(1,0)*m(2,3)*m(3,2) + m(1,2)*m(2,0)*m(3,3) - m(1,0)*m(2,2)*m(3,3);
	m(1,1) = m(0,2)*m(2,3)*m(3,0) - m(0,3)*m(2,2)*m(3,0) + m(0,3)*m(2,0)*m(3,2) - m(0,0)*m(2,3)*m(3,2) - m(0,2)*m(2,0)*m(3,3) + m(0,0)*m(2,2)*m(3,3);
	m(1,2) = m(0,3)*m(1,2)*m(3,0) - m(0,2)*m(1,3)*m(3,0) - m(0,3)*m(1,0)*m(3,2) + m(0,0)*m(1,3)*m(3,2) + m(0,2)*m(1,0)*m(3,3) - m(0,0)*m(1,2)*m(3,3);
	m(1,3) = m(0,2)*m(1,3)*m(2,0) - m(0,3)*m(1,2)*m(2,0) + m(0,3)*m(1,0)*m(2,2) - m(0,0)*m(1,3)*m(2,2) - m(0,2)*m(1,0)*m(2,3) + m(0,0)*m(1,2)*m(2,3);
	m(2,0) = m(1,1)*m(2,3)*m(3,0) - m(1,3)*m(2,1)*m(3,0) + m(1,3)*m(2,0)*m(3,1) - m(1,0)*m(2,3)*m(3,1) - m(1,1)*m(2,0)*m(3,3) + m(1,0)*m(2,1)*m(3,3);
	m(2,1) = m(0,3)*m(2,1)*m(3,0) - m(0,1)*m(2,3)*m(3,0) - m(0,3)*m(2,0)*m(3,1) + m(0,0)*m(2,3)*m(3,1) + m(0,1)*m(2,0)*m(3,3) - m(0,0)*m(2,1)*m(3,3);
	m(2,2) = m(0,1)*m(1,3)*m(3,0) - m(0,3)*m(1,1)*m(3,0) + m(0,3)*m(1,0)*m(3,1) - m(0,0)*m(1,3)*m(3,1) - m(0,1)*m(1,0)*m(3,3) + m(0,0)*m(1,1)*m(3,3);
	m(2,3) = m(0,3)*m(1,1)*m(2,0) - m(0,1)*m(1,3)*m(2,0) - m(0,3)*m(1,0)*m(2,1) + m(0,0)*m(1,3)*m(2,1) + m(0,1)*m(1,0)*m(2,3) - m(0,0)*m(1,1)*m(2,3);
	m(3,0) = m(1,2)*m(2,1)*m(3,0) - m(1,1)*m(2,2)*m(3,0) - m(1,2)*m(2,0)*m(3,1) + m(1,0)*m(2,2)*m(3,1) + m(1,1)*m(2,0)*m(3,2) - m(1,0)*m(2,1)*m(3,2);
	m(3,1) = m(0,1)*m(2,2)*m(3,0) - m(0,2)*m(2,1)*m(3,0) + m(0,2)*m(2,0)*m(3,1) - m(0,0)*m(2,2)*m(3,1) - m(0,1)*m(2,0)*m(3,2) + m(0,0)*m(2,1)*m(3,2);
	m(3,2) = m(0,2)*m(1,1)*m(3,0) - m(0,1)*m(1,2)*m(3,0) - m(0,2)*m(1,0)*m(3,1) + m(0,0)*m(1,2)*m(3,1) + m(0,1)*m(1,0)*m(3,2) - m(0,0)*m(1,1)*m(3,2);
	m(3,3) = m(0,1)*m(1,2)*m(2,0) - m(0,2)*m(1,1)*m(2,0) + m(0,2)*m(1,0)*m(2,1) - m(0,0)*m(1,2)*m(2,1) - m(0,1)*m(1,0)*m(2,2) + m(0,0)*m(1,1)*m(2,2);
	double d= 1/m1.determinant();
	for(int i=0; i<16; i++) m.data[i]*=d;
	return m;
}
extern Mtx LU(Mtx & m, Vec &v);


inline Mtx inverse(Mtx &m, int M=3) 
{

	int i,j,k;
	Mtx I ; // implement the static method...
	Mtx S(m); // make a working copy to destroy.

	for(i=0; i<M-1; i++)
	{
		for(k=i+1; k < M; k++)
		{
			for(j=M-1; j>=0; j--)
			{
				I.data[k*M+j] -= I.data[i*M+j] * 
					(S.data[k*M+i]/S.data[i*M+i]);
			}

			for(j=M-1; j>=i; j--)
			{
				S.data[k*M+j] -= S.data[i*M+j] * 
					(S.data[k*M+i]/S.data[i*M+i]);
			}
		}
	}     

	//-------------------------------------

	for(i=M-1; i>0; i--)
	{
		for(k=i-1; k >=0; k--)
		{
			for(j=M-1; j>=0; j--)
			{
				I.data[k*M+j] -= I.data[i*M+j] * 
					(S.data[k*M+i]/S.data[i*M+i]);          
			}

			for(j=M-1; j>=i; j--)
			{

				S.data[k*M+j] -= S.data[i*M+j] * 
					(S.data[k*M+i]/S.data[i*M+i]);

			}
		}
	}     

	for(i=0; i<M; i++)
	{
		for(j=M-1; j >=0; j--)
		{
			I.data[i*M+j] =I.data[i*M+j]/S.data[i*M+i]; 
		}

		for(j=M-1; j >=i; j--)
		{
			S.data[i*M+j] =S.data[i*M+j]/S.data[i*M+i];       
		}
	}     

	return I;

}
#endif
#if 1
/*******************************************************************************
Given a matrix a[1..m][1..n], this routine computes its singular value
decomposition, A = U.W.VT.  The matrix U replaces a on output.  The diagonal
matrix of singular values W is output as a vector w[1..n].  The matrix V (not
the transpose VT) is output as v[1..n][1..n].
*******************************************************************************/
namespace M{
void svdcmp(M::Matrix &a, M::Vector &w, M::Matrix &v)
{

	bool flag;
	int i,its,j,jj,k,l,nm;
	double anorm,c,f,g,h,s,scale,x,y,z;

	int m=4; // a.nrows();
	int n=4; // a.ncols();
	Vector rv1; // will be size n (n);
	g=scale=anorm=0.0;
	for (int i=0;i<n;i++) {

		l=i+2;
		rv1[i]=scale*g;
		g=s=scale=0.0;
		if (i < m) {

			for (k=i;k<m;k++) scale += fabs(a[k][i]);
			if (scale != 0.0) {

				for (k=i;k<m;k++) {

					a[k][i] /= scale;
					s += a[k][i]*a[k][i];

				}
				f=a[i][i];
				g = -SIGN(sqrt(s),f);
				h=f*g-s;
				a[i][i]=f-g;
				for (j=l-1;j<n;j++) {

					for (s=0.0,k=i;k<m;k++) s += a[k][i]*a[k][j];
					f=s/h;
					for (k=i;k<m;k++) a[k][j] += f*a[k][i];

				}
				for (k=i;k<m;k++) a[k][i] *= scale;

			}

		}
		w[i]=scale *g;
		g=s=scale=0.0;
		if (i+1 <= m && i != n) {

			for (k=l-1;k<n;k++) scale += fabs(a[i][k]);
			if (scale != 0.0) {

				for (k=l-1;k<n;k++) {

					a[i][k] /= scale;
					s += a[i][k]*a[i][k];

				}
				f=a[i][l-1];
				g = -SIGN(sqrt(s),f);
				h=f*g-s;
				a[i][l-1]=f-g;
				for (k=l-1;k<n;k++) rv1[k]=a[i][k]/h;
				for (j=l-1;j<m;j++) {

					for (s=0.0,k=l-1;k<n;k++) s += a[j][k]*a[i][k];
					for (k=l-1;k<n;k++) a[j][k] += s*rv1[k];

				}
				for (k=l-1;k<n;k++) a[i][k] *= scale;

			}

		}
		anorm=Max<double>(anorm,(fabs(w[i])+fabs(rv1[i])));

	}
	for (int i=n-1;i>=0;i--) {

		if (i < n-1) {

			if (g != 0.0) {

				for (j=l;j<n;j++)
					v[j][i]=(a[i][j]/a[i][l])/g;
				for (j=l;j<n;j++) {

					for (s=0.0,k=l;k<n;k++) s += a[i][k]*v[k][j];
					for (k=l;k<n;k++) v[k][j] += s*v[k][i];

				}

			}
			for (j=l;j<n;j++) v[i][j]=v[j][i]=0.0;

		}
		v[i][i]=1.0;
		g=rv1[i];
		l=i;

	}
	for (int i=Min(m,n)-1;i>=0;i--) {

		l=i+1;
		g=w[i];
		for (j=l;j<n;j++) a[i][j]=0.0;
		if (g != 0.0) {

			g=1.0/g;
			for (j=l;j<n;j++) {

				for (s=0.0,k=l;k<m;k++) s += a[k][i]*a[k][j];
				f=(s/a[i][i])*g;
				for (k=i;k<m;k++) a[k][j] += f*a[k][i];

			}
			for (j=i;j<m;j++) a[j][i] *= g;

		} else for (j=i;j<m;j++) a[j][i]=0.0;
		++a[i][i];

	}
	for (int k=n-1;k>=0;k--) {

		for (int its=0;its<30;its++) {

			flag=true;
			for (l=k;l>=0;l--) {

				nm=l-1;
				if (fabs(rv1[l])+anorm == anorm) {

					flag=false;
					break;

				}
				if (fabs(w[nm])+anorm == anorm) break;

			}
			if (flag) {

				c=0.0;
				s=1.0;
				for (i=l-1;i<k+1;i++) {

					f=s*rv1[i];
					rv1[i]=c*rv1[i];
					if (fabs(f)+anorm == anorm) break;
					g=w[i];
					h=pythag(f,g);
					w[i]=h;
					h=1.0/h;
					c=g*h;
					s = -f*h;
					for (j=0;j<m;j++) {

						y=a[j][nm];
						z=a[j][i];
						a[j][nm]=y*c+z*s;
						a[j][i]=z*c-y*s;

					}

				}

			}
			z=w[k];
			if (l == k) {

				if (z < 0.0) {

					w[k] = -z;
					for (j=0;j<n;j++) v[j][k] = -v[j][k];

				}
				break;

			}
			if (its == 29) 
				throw("no convergence in 30 svdcmp iterations");
			x=w[l];
			nm=k-1;
			y=w[nm];
			g=rv1[nm];
			h=rv1[k];
			f=((y-z)*(y+z)+(g-h)*(g+h))/(2.0*h*y);
			g=pythag(f,1.0);
			f=((x-z)*(x+z)+h*((y/(f+SIGN(g,f)))-h))/x;
			c=s=1.0;
			for (j=l;j<=nm;j++) 
			{
				i=j+1;
				g=rv1[i];
				y=w[i];
				h=s*g;
				g=c*g;
				z=pythag(f,h);
				rv1[j]=z;
				c=f/z;
				s=h/z;
				f=x*c+g*s;
				g=g*c-x*s;
				h=y*s;
				y *= c;
				for (jj=0;jj<n;jj++)
				{

					x=v[jj][j];
					z=v[jj][i];
					v[jj][j]=x*c+z*s;
					v[jj][i]=z*c-x*s;
				}
				z=pythag(f,h);
				w[j]=z;
				if (z) 
				{

					z=1.0/z;
					c=f*z;
					s=h*z;

				}
				f=c*g+s*y;
				x=c*y-s*g;
				for (jj=0;jj<m;jj++) 
				{

					y=a[jj][j];
					z=a[jj][i];
					a[jj][j]=y*c+z*s;
					a[jj][i]=z*c-y*s;
				}
			}
			rv1[l]=0.0;
			rv1[k]=f;
			w[k]=x;
		}
	}
}
/**
http://rosettacode.org/wiki/QR_decomposition#C
typedef struct {
	int m, n;
	double ** v;
} mat_t, mat;
*/
Matrix matrix_minor(Matrix x, int d)
{
	Matrix m ; // = matrix_new(x->m, x->n);
	for (int i = 0; i < d; i++)
		m[i][i] = 1;
	for (int i = d; i < x.order; i++)
		for (int j = d; j < x.order; j++)
			m[i][j] = x[i][j];
	return m;
}
/* m = I - v v^T */
Matrix vmul(Vector v, int n)
{
	Matrix x; // = matrix_new(n, n);
	for (int i = 0; i < n; i++)
		for (int j = 0; j < n; j++)
			x[i][j] = -2 *  v[i] * v[j];
	for (int i = 0; i < n; i++)
		x[i][i] += 1;

	return x;
}
void householder(Matrix m, Matrix &R, Matrix &Q)
{
	Matrix q[m.order];
	Matrix z = m;
	Matrix z1;
	int nrows=m.order;
	int ncols = m.order;
	REAL d = m.Determinant();
	assert(fabs(m.Determinant() ) > 0.001);  // check linearly independent

	//assert(0); // DOESNT WORK - divide by zero issue?

	for (int k = 0; k < nrows && k < ncols - 1; k++) 
	{
		Vector e, x;
		REAL a;
		z1 = matrix_minor(z, k);
		//if (z != m) matrix_delete(z);
		z = z1;
 
		x = z.Col(k); // mcol(z, x, k);
		a= x.Len(); // a = vnorm(x, m->m);  // sqrt is len
		if (m[k][k] > 0) 
			a = -a;
 
		for (int i = 0; i < m.order; i++)
			e[i] = (i == k) ? 1 : 0;	
		e= x + a*e;	 //vmadd(x, e, a, e, m->m);
		assert(e.Len()!= 0.0);
		e= e/e.Len(); //vdiv(e, vnorm(e, m->m), e, m->m);  vnorm = /* ||e|| */ 
		//q[k] = vmul(e, m->m); // /* m = I - v v^T */
		q[k]= vmul(e, m.order); 
		z1= q[k]*z; //z1 = matrix_mul(q[k], z);

		//if (z != m) matrix_delete(z);
		z = z1;
	}
	//matrix_delete(z);
	Q = q[0];	//*Q = q[0];
	R = q[0]*m; // *R=matrix_mul(q[0], m);
	//for (int i = 1; i < m->n && i < m->m - 1; i++) 
	for (int i = 1; i < ncols && i < nrows - 1; i++) 
	{
		//z1 = matrix_mul(q[i], *Q);
		z1 = q[i]* Q; // matrix_mul(q[i], *Q);
		//if (i > 1) matrix_delete(*Q);	
		Q = z1; //*Q = z1;
		//matrix_delete(q[i]);
	}
	//matrix_delete(q[0]);
	z = Q*m; //z = matrix_mul(*Q, m);
	//matrix_delete(*R);
	R=z; // *R = z;	
	Q=Q.Transpose(); // matrix_transpose(*Q);
}

bool Householder2(M::Matrix a, M::Vector &r, M::Matrix &q)
{
	int n=4, m=4;
	REAL fak;
	M::Vector d;
	//a=A;
	q=a;

	for( int j=0; j< n /* cols*/ ; j++)
	{
		REAL s=0; // s := 0;
		for(int i=j; i<m /* rows*/; i++) 	s=s+a[i][j]*a[i][j];
		s= sqrt(s);  // s := sqrt(s);
		d[j] = q[j][j]>0 ? -s : s; //  dj := if ajj > 0 then −s else s;
		fak= sqrt(s* (s + abs(q[j][j] ))); // fak := sqrt(s ∗ (s + abs(ajj )));
		q[j][j]= q[j][j]-d[j]; // ajj := ajj − dj ;
		if(fak==0)
			return false;
		for(int k=j; j< m; j++)  
			q[k][j] = q[k][j]/fak; //for k := j to m do akj := akj/fak;
		for(int i=j; i<n ; i++)  //for i := j + 1 to n do
		{
			s=0.0;
			for(int k=j; j< m; j++) 
				s = s + q[k][j] * q[k][i];  //for k := j to m do s := s + akj ∗ aki;
			for(int k=j; j< m; j++) 
				q[k][i] = q[k][j]*s; //for k := j to m do aki := aki − akj ∗ s;
		}
	}

	return true;
}

// Follows the best trend of all points by a single smooth curve
// Linear regression is the simplest kind of least square approximation: y = ax + b
void LeastSqRegression2D(std::vector<REAL> x, std::vector<REAL> y, REAL &a, REAL &b)
{
	int n= (int) x.size();
	REAL xmean=Mean(x);		REAL ymean=Mean(y);
	REAL xsum=Sum(x);		REAL ysum=Sum(y);
	REAL x2sum = SqSum(x);	REAL y2sum=SqSum(y);

	REAL sum=0.0;
	for(size_t i=0; i< x.size(); i++)
		sum+=x[i]*y[i];
	sum=sum*n;
	a = (sum - (xsum*ysum))/ ((n*x2sum) - (xsum*xsum));
	b = (ysum/n) - a * (xsum/n);

}
// http://www.scribd.com/doc/31477970/Regressions-et-trajectoires-3D
void LinearRegression3D(std::vector<Vector> pts, REAL &a, REAL &b, REAL &u, REAL &v, REAL &w)
{
	int n=(int) pts.size();
	REAL c0, c1, c2;
	REAL Xm = Sum(M::Slice(pts, SliceEnum::X));
	REAL Ym = Sum(M::Slice(pts, SliceEnum::Y));
	REAL Zm = Sum(M::Slice(pts, SliceEnum::Z));
	REAL sumXY=0.0,sumXZ=0.0,sumYZ=0.0;
	for(size_t i=0; i< n; i++) sumXY+=pts[i].x * pts[i].y;
	for(size_t i=0; i< n; i++) sumXZ+=pts[i].x * pts[i].z;
 	for(size_t i=0; i< n; i++) sumXZ+=pts[i].y * pts[i].z;

	REAL Sxx=-Sq(Xm) +  SqSum(M::Slice(pts, SliceEnum::X));
	REAL  Sxy=-Xm*Ym+ (sumXY/n);
	REAL Syy = -Sq(Ym)+ SqSum(M::Slice(pts, SliceEnum::Y))/n;
	REAL Sxz = -Xm*Zm + sumXZ/n;
	REAL Szz = -Sq(Zm)+ SqSum(M::Slice(pts, SliceEnum::Z))/n;
	REAL Syz = -Ym*Zm + sumYZ/n;
	
	REAL theta = 0.5 * atan(2*Sxy/(Sxx-Syy));
	REAL K11 = (Syy+Szz)*Sq(cos(theta)) + (Sxx+Szz)*Sq(sin(theta)) - 2*Sxy*cos(theta)*sin(theta);
	REAL K22 = (Syy+Szz)*Sq(sin(theta)) + (Sxx+Szz)*Sq(cos(theta)) - 2*Sxy*cos(theta)*sin(theta);
	REAL K12 = -Sxy*Sq(cos(theta))-Sq(sin(theta)) + (Sxx-Syy)*cos(theta)*sin(theta);
	REAL K10 = Sxz*cos(theta)+Syz*sin(theta);
	REAL K01 = -Sxz*sin(theta) + Syz*cos(theta);
	REAL K00 = Sxx+Syy;
	c2= -K00-K11-K22;
	c1= K00*K11+K00*K22+ K11*K22- Sq(K01) - Sq(K10);
	c0= Sq(K01)*K11+ Sq(K10)*K22 - K00*K11*K22;
	REAL p = c1 = 1/3 * Sq(c2);
	REAL q = 2/27 * c2*c2*c2 - 1/2*c1*c2 + c0;
	REAL R = 1/4*Sq(q) + 1/27*p*p*p;
	REAL sigmasq;
	if(R>=0)
	{
		sigmasq =-1/3*c2 +  pow(-1/2*q + sqrt(R), 1/3) + pow(-1/2 * q + sqrt(R), 1/3);
	}
	else
	{
		REAL phi = sqrt(-1/27*p*p*p); 
		REAL rtheta = acos(-q / (2*phi));
		sigmasq =Min<REAL>(-1/3 * c2 + 2 *pow(phi,1/3)*cos(1/3*rtheta),
			Min(-1/3 * c2 + 2 *pow(phi,1/3)*cos(1/3*(rtheta+2*PI)),
			-1/3 * c2 + 2 *pow(phi,1/3)*cos(1/3*(rtheta+4*PI))));
	}
	a = -K10/(K11-sigmasq)*cos(theta)+(K01/(K22-sigmasq) * sin(theta));
	b = -K10/(K11-sigmasq)*sin(theta)+(K01/(K22-sigmasq) * cos(theta));
	u=  1/(1+a*a+b*b)*((1+b*b)*Xm-a*b*Ym + a*Zm);
	v=  1/(1+a*a+b*b)*(-a*b*Xm+(1+a*a)*Ym + b*Zm);
	w=  1/(1+a*a+b*b)*((a*Xm+b*Ym)+(a*a+b*b)*Zm);


}
// http://arma.sourceforge.net/docs.html
//http://mlpack.org/download.html 

// http://www.numericmethod.com/About-numerical-methods/curve-fitting/lagrange-polynomial 
// http://www.numericmethod.com/About-numerical-methods/curve-fitting/cubic-spline
//http://people.cas.uab.edu/~mosya/cl/ 
// http://www.ats.ucla.edu/stat/stata/webbooks/reg/chapter1/statareg1.htm

};
#endif