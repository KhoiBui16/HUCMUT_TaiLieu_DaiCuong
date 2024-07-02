%Nguyen Tan Cuong
%http://www.facebook.com/asingleheart193
%Gia thiet la dong dien nam hoan toan trong mat phang Oxy
%Gia thiet dong dien tron co ban kinh R, tam [0 0 0] trong khong gian.
%Gia thiet tinh gan dung bang cach chia vong tron thanh 36 doan bang nhau.
function tutruong
clf
I= input('Nhap vao gia tri cua dong dien, I= ');
r= input('Nhap vao ban kinh, r= ');
B= [0 0 0];
for i= 1:36
    theta1= (i-1)*2*pi/36; theta2= i*2*pi/36;
    dlx1= 0; dly1= r*cos(theta1); dlz1= r*sin(theta1);
    dlx2= 0; dly2= r*cos(theta2); dlz2= r*sin(theta2);
    dl= [dlx2 - dlx1, dly2 - dly1, dlz2 - dlz1];
    dr= -1/2*[dlx1 + dlx2, dly1 + dly2, dlz1 + dlz2];
    B= B + 4*10^-7/(4*pi)*(I*cross(dl, dr)/r^3);
end
disp('Vecto tu truong B la, B= ');
disp(B)
t = 0:pi/50:10*pi;
plot3(0*t, sin(t),cos(t))
hold on
quiver3(0, 0, 0, B(1), B(2), B(3), 10^9)
xlabel('x'); ylabel('y'); zlabel('z'); 
end