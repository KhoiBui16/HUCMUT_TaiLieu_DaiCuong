%Nguyen Tan Cuong
%http://www.facebook.com/asingleheart193
function dientutruong
syms t vx vy vz C
B= [0 0 1];
xyz= [0 0 0];
%xyz= input('Nhap vao vi tri ban dau cua electron, vitri= ');
x0= xyz(1); y0= xyz(2); z0= xyz(3);
v0= [1 1 1]
%v0= input('Nhap vao vecto van toc, v= ');
v0x= v0(1); v0y= v0(2); v0z= v0(3);
E= [0 0 0]
%E= input('Nhap vao vecto dien truong, E= ');
me= 9.10938*10^-31; q= -1.60276*10^-19;
giatoc= (E + cross([vx, vy, vz], B)); 
[vx vy] = dsolve(['Dvx=', char(giatoc(1)), ', Dvy=', char(giatoc(2)), ', vx(0)= ', num2str(v0x), ', vy(0)= ', num2str(v0y)]);
vx= subs(vx, t, q/me*t); vy= subs(vy, t, q/me*t);
vz= dsolve(['Dvz=', char(giatoc(3)), ', vz(0)= ', num2str(v0z)]);
x= dsolve(['Dx= ', char(vx), ', x(0)= ', num2str(x0)]);
y= dsolve(['Dy= ', char(vy), ', y(0)= ', num2str(y0)]);
z= dsolve(['Dz= ', char(vz), ', z(0)= ', num2str(z0)]);
if vz== 0
    ezplot(x, y); title('Quy dao');
else
    ezplot3(x, y, z); title('Quy dao');
end
end