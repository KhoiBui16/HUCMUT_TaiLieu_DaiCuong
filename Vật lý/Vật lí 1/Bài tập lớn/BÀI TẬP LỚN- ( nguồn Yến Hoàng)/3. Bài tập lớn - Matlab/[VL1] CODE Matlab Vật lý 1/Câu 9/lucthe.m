%Gi? thi?t trong th?i gian deltat, l?c F là h?ng s?.
%Ch?n m?c th? n?ng t?i x= 0.
function lucthe
syms t x k q
F= input('Nhap vao ham the nang, F= ');
k= input('Nhap vao kappa, kappa = ');
q= input('Nhap vao q, q= ');
F= eval(F);
m= input('Nhap vao khoi luong chat diem, m= ');
v0= input('Van toc ban dau cua chat diem, v= ');
deltat= input('Buoc thoi gian tinh toan, deltat= ');
x0= input('Vi tri ban dau cua chat diem, x0= ');
n= input('Nhap vao so lan lap, n= ');
X= zeros(n, 1); V= zeros(n, 1); a= zeros(n, 1);
TN= zeros(n, 1); DN= zeros(n, 1); T= zeros(n, 1);
a(1)= subs(F, x0)/m; V(1)= v0; X(1)= x0;
DN(1)= 1/2*m*V(1)^2; TN(1)= int(F, x, 0, x0);
for i= 1:n
    X(i + 1)= (1/2)*a(i)*deltat^2 + V(i)*deltat + X(i);
    V(i + 1)= V(i) + deltat*a(i);
    a(i +1)= subs(F, X(i))/m;
    TN(i + 1)= int(F, x, x0, X(i));
    DN(i + 1)= 1/2*m*V(i + 1)^2;
    T(i + 1)= i*deltat;
end
plot(T, TN + DN, '*')
end 