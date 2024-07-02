%Nguyen Tan Cuong
%http://www.facebook.com/asingleheart193
function dtt
syms t q me vx vy vz
B= [0 0 1];
xyz= input('Nhap vao vi tri ban dau cua electron, vitri= ');
x0= xyz(1); y0= xyz(2); z0= xyz(3);
v0= input('Nhap vao vecto van toc, v= ');
v0x= v0(1); v0y= v0(2); v0z= v0(3);
E= input('Nhap vao vecto dien truong, E= ');
me= 9.01*10^-31; q= -1.6*10^-19;
%giatoc= (q/me)*(E + cross([vx, vy, vz], B));
giatoc= (q/me)*(E + cross([vx, vy, vz], B)); 
[vx vy] = dsolve(['Dvx=', char(giatoc(1)), ', Dvy=', char(giatoc(2)), ', vx(0)= ', num2str(v0x), ', vy(0)= ', num2str(v0y)]);
vz= dsolve(['Dvz=', char(giatoc(3)), ', vz(0)= ', num2str(v0z)]);
%x= dsolve(['Dx= ', char(vx), ', x(0)= ', num2str(x0)]);
%y= dsolve(['Dy= ', char(vy), ', y(0)= ', num2str(y0)]);
[x y] = dsolve(['D2x=', char(giatoc(1)), ', D2y=', char(giatoc(2)), ', x(0)= ', num2str(x0), ', y(0)= ', num2str(y0)]);
z= dsolve(['Dz= ', char(vz), ', z(0)= ', num2str(z0)]);
if vz== 0
    ezplot(x, y)
else
    ezplot3(x, y, z)
end
end