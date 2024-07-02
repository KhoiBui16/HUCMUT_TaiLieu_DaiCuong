%Nguyen Tan Cuong
%http://www.facebook.com/asingleheart193
function nemgnang
warning off
syms t a v g
m= input('Nhap vao khoi luong vat, m= ');
h= input('Nhap vao he so luc can, h= ');
v0= input('Nhap vao van toc ban dau, v0= ');
Dv= solve(m*a - m*g - h*v, 'a');
v= dsolve(['Dv= ', char(Dv)], ['v(0) =', num2str(v0)]);
toado= dsolve(['Dtoado= ', string(v)], 'toado(0)= 0');
x= subs(toado, g, 0);
y= subs(toado, g, -9.81);
disp(['x= ', string(x)])
disp(['y= ', string(y)])
end