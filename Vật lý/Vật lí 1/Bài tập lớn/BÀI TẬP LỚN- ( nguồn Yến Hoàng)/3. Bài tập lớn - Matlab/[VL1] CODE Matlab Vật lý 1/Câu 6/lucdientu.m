function lucdientu
clf;
B= [0 0 1];
TOADO= input('Nhap vao vi tri ban dau cua electron [x y z] (m), vitri= ');
VANTOC= input('Nhap vao vecto van toc [vx vy vz] (m/s) , v= ');
E= input('Nhap vao vecto dien truong [Ex Ey Ez] (C/V), E= ');
DT = 1e-13;             
me = 9.10939e-31;    
q = -1.602177e-19;      
C = q/me;
grid on;              
xlabel('x (m)');      
ylabel('y (m)');
zlabel('z (m)');
title('Quy dao cua Electron trong dien tu truong');
hold on;
THOIGIAN = 0.0;
n = 1000;
for i=1:n
  GIATOC = C * (E + cross(VANTOC, B));
  VANTOC = VANTOC + DT * GIATOC;    
  TOADO = TOADO + DT*VANTOC + 1/2 * GIATOC * THOIGIAN ^2; 
  THOIGIAN = THOIGIAN + DT;   
  plot3(TOADO(1),TOADO(2), TOADO(3), '*');  
end
end