%Nguyen Tan Cuong
%http://www.facebook.com/asingleheart193
%Cac gia thiet tinh toan:
%Vecto gia toc a cung chieu voi trong luc
%Truc x huong len tren
%Thoi gian t: t khong biet de lam gi? Ve bieu do chang?
function NX
syms t v g vx vy
m= input('Nhap vao khoi luong vat, m= ');
h= input('Nhap vao he so luc can, h= ');
v0= input('Nhap vao van toc ban dau, v0= ');
alpha= input('Nhap vao alpha, alpha= ');
a= (m*g - h*v)/m;
ax= subs(a, {v g}, {vx 0});
ay= subs(a, {v g}, {vy -9.81});
vx= dsolve(['Dvx= ', char(ax)], ['vx(0) =', num2str(v0*cos(alpha))]);
vy= dsolve(['Dvy= ', char(ay)], ['vy(0) =', num2str(v0*sin(alpha))]);
x= dsolve(['Dx= ', char(vx)], 'x(0)= 0');
y= dsolve(['Dx= ', char(vy)], 'x(0)= 0');
disp(['x= ', char(x)])
disp(['y= ', char(y)])
ezplot(x, y)
end