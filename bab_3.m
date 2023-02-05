clc;
clear;
%Semua variabel yg ada pada formula dapat diubah sesuai definisi dari parameter pada soal uts yang diberikan

%Mencari nilai eigen dan vektor eigen
'Vektor eigen';
%matriks covariance
mcov = [1 -0.71; -0.71 1];
%nilai eigen mcov
e = eig(mcov);
%vektor eigen dari mcov_1
[V, D] = eig(mcov); %di mana parameter V adalah eigen vector-nya %kalau bingung mending itung manual ygy
%normalisasi dari eigen vector mcov
normal = norm(V); % di mana g adalah hasil daripada parameter V di atas (input sendiri) 
%vektor hasil normalsisasi mcov


%Kontur densitas elips disstribusi normal BIVARIAT
'fungsi kepadatan peluang data Bivariat';
p = sqrt(2*pi);
%matriks transpose mcov
tr= mcov.';
%determinan mcov
d = det(mcov);
%inverse mcov
y = inv(mcov);
%random vektor kolom
x = [x_4 ; x_5];
%vektor rerata
mu = [0 ; 2];
%Rumus akhir (konturnya)
cont = 1/(p*p*(sqrt(d)))*exp((-1/2*(((x-mu).')*(inv(mcov))*(x-mu))));

%NOTE : line 12 s.d. 14 hanya digunakan pada saat waktu udh mepet & sebisa
%mungkin hitung vektor eigen serta hasil normalisasinya secara manual
%dikarenakan matlab tidak bisa melakukan permisalan parameter.


 
