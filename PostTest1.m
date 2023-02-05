x = [9 2 6 5 8];
y = [12 8 6 4 10];
z = [3 4 0 2 1];
'Rerata sampel';
x1=mean(x); y1=mean(y); z1=mean(z);
'Variansi sampel';
for i=1:5
    b(i)=(x(i)-x1)^2;
end
s1=sum(b)/5;
for i=1:5
    c(i)=(y(i)-y1)^2;
end
s2=sum(c)/5;
for i=1:5
    f(i)=(z(i)-z1)^2;
end
s3=sum(f)/5;
'Covariance sampel';
for i=1:5
    d(i)=(x(i)-x1)*(y(i)-y1);
end
s12=sum(d)/5;
for i=1:5
    d(i)=(x(i)-x1)*(z(i)-z1);
end
s13=sum(d)/5;
for i=1:5
    d(i)=(y(i)-y1)*(z(i)-z1);
end
s23=sum(d)/3;
for i=1:5
    d(i)=(x(i)-x1)*(y(i)-y1)*(z(i)-z1);
end
s123=sum(d)/5;
'Koefisien korelasi sampel';
u=sqrt(s1);
v=sqrt(s2);
w=u*v;
r=s12/w;


v_1=sqrt(s3);
w_1=u*v_1;
r_1=s13/w_1;



w_2=v_1*v;
r_2=s23/w_2;

'Matriks rerata sampel';
xx=[x1;y1;z1];
'Matriks variansi sampel';
VV=[s1;s2;s3];
'Matriks covariance sampel';
Sn=[s1 s12 s13;s12 s2 s23; s13 s23 s3];
'Matriks korelasi sampel';
R=[1 r r_1;r 1 r_2; r_1 r_2 1];
'Jarak statistik';
for i=1
    e=(x(i)-x1)^2;
    E=e/s1;
    f=(y(i)-y1)^2;
    F=f/s2;
    G=E+F;
end
H=sqrt(G);
for i=2
    j=(x(i)-x1)^2;
    J=j/s1;
    k=(y(i)-y1)^2;
    K=k/s2;
    B=J+K;
end
M=sqrt(B);
for i=3
    l=(x(i)-x1)^2;
    J_1= l/s1;
    k_1 =(z(i)-z1)^2;
    K_1 =k_1/s3;
    B_1 =J_1+K_1;
end
M_1 = sqrt(B_1);
'Vektor rerata populasi';
mu1=1;
mu2=3;
mu=[mu1;mu2];
'Matriks covariance populasi';
sigma1=2;
sigma12=1.13;
sigma2=1;
Sigma=[sigma1 sigma12;sigma12 sigma2];
'Matriks koefisien korelasi populasi';
rho12=-0.8;
rho=[1 rho12;rho12 1];
rho12=sigma12/sqrt(sigma1*sigma2);
'Transpose';
Tr=x';
'Nilai Eigen dan Vektor Eigen';
C=[3 -2 0;-2 3 0;0 0 5];
NE=eig(C);
'Distribusi Normal Bivariat';
X1=1;
X2=2;
X=[X1;X2];
DetSigma=det(Sigma);
InvSigma=inv(Sigma);
N=(X-mu)';
A=InvSigma;
B=(X-mu);
S=N*A*B;
D=-1/2*S;
I=2*pi;
L=sqrt(DetSigma);
Y=I*L;
f(X)=exp(D)/Y;
