function lucthe
syms t x k q
F= input('Nhap vao ham luc the, F= ');
k= input('Nhap vao k, k= ');
q= input('Nhap vao q, q= ');
%Ham eval: Chuyen du lieu nhap vao tu ban phim sang dang ham so tinh toan
%duoc
F= eval(F);
m= input('Nhap vao khoi luong chat diem, m= ');
v0= input('Van toc ban dau cua chat diem, v= ');
deltat= input('Buoc thoi gian tinh toan, deltat= ');
x0= input('Vi tri ban dau cua chat diem, x0= ');
n= input('Nhap vao so lan lap, n= ');
%Tao cac ma tran n hang 1 cot, moi hang dung de chua mot gia tri ung voi
%bien chay i, tam thoi mang gia tri 0
X= zeros(n, 1);
V= zeros(n, 1);
a= zeros(n, 1);
TN= zeros(n, 1);
DN= zeros(n, 1);
T= zeros(n, 1);
%Gan cac gia tri ung voi phan tu hang thu nhat trong cac ma tran
a(1)= subs(F, x0)/m;
V(1)= v0;
X(1)= x0;
DN(1)= 1/2*m*V(1)^2;
TN(1)= -int(F, x, 0, x0);
%Lan luot gan cac gia tri vao cac phan tu i tang dan trong ma tran
%Trong mot khoang thoi gian du nho, ta xem cac phuong trinh sau gan dung
for i= 1:n
    X(i + 1)= (1/2)*a(i)*deltat^2 + V(i)*deltat + X(i);
    V(i + 1)= V(i) + deltat*a(i);
    a(i +1)= subs(F, X(i))/m;
    TN(i + 1)= -int(F, x, x0, X(i));
    DN(i + 1)= TN(1) + DN(1) - TN(i + 1);
    T(i + 1)= i*deltat;
end
%Tong dai so cua dong nang va the nang bang voi co nang cua vat
plot(T, TN, 'r')
hold on
plot(T, DN, 'b')
plot(T, TN + DN, 'k')
end