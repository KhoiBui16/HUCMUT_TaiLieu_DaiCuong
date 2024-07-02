function BTL_Chuyen_dong_nem_xien
clc
close all
clear all
%% BTL VL1 nhóm 17: Mai Thành Đạt, Lưu Quang Đạt, Lê Minh Đăng
%% CONSTANTS Hằng số đáng chú ý
g= 9.8;
%% INPUT Data Nhập dữ liệu đầu vào 
disp('Mời bạn nhập dữ liệu đầu vào');
x = input('x= ');
y = input('y= ');

v = input('v= ');
alpha = input('a= ');

t = 0;
dt = 0.005;
%% FIGURE Thiết lập trục tọa độ khảo sát
figure('name','Chuyen_dong_nem_xien','color','white','numbertitle','off');
hold on
fig_honda = plot(x,y,'ro','MarkerSize',10,'markerfacecolor','r');
ht = title(sprintf('t=%0.2fs',t));

axis equal
axis ([-1 50 -1 30]);
%% CALCULATION Phương trình chuyển động của vật
alpha = alpha/180*pi;
vx = v*cos(alpha);
vy = v*sin(alpha);

while y>-0.01
    t = t+dt;
    ax = 0;
    ay = -g;
    vx = vx + ax*dt;
    vy = vy + ay*dt;
    x = x + vx*dt+0.5*ax*dt.^2;
    y = y + vy*dt +0.5*ay*dt.^2;
    
    plot(x,y,'o','markersize',0.5,'color','k');
    set(fig_honda,'xdata',x,'ydata',y);
    set(ht,'string',sprintf('t =%0.2fs',t));
    pause(0.002);
end
%% SOlVE Tính toán và cho ra kết quả
syms t1 t2 v1 v2 vx1 vy1 vx2 vy2 k
disp('Mời bạn nhập yêu cầu tính toán câu a)');
%% Tính toán cho câu a):
t1 = input( 'nhập t1= ');
t2 = input( 'nhập t2= ');
vx1 = v*cos(alpha) + ax*t1;
vy1 = v*sin(alpha) + ay*t1;
v1 = sqrt (vx1^2+vy1^2);
vx2 = v*cos(alpha) + ax*t2;
vy2 = v*sin(alpha) + ay*t2;
v2 = sqrt (vx2^2+vy2^2);
k = v1/v2;
fprintf('tỉ số k giữa v2/v1 là:');
disp(k);
%% Tính toán cho câu b):
syms vxa vya at an ta r
disp('Mời bạn nhập yêu cầu tính toán câu b)');
ta = input( 'nhập thời điểm khảo sát gia tốc t = ');
vxa = v*cos(alpha) + ax*ta;
vya = v*sin(alpha) + ay*ta;
r = vxa/vya;
p = atan(r);
at = g*cos(p);
an = g*sin(p);
fprintf('Gia tốc tiếp tuyến at là:');
disp(at);
fprintf('Gia tốc pháp tuyến an là:');
disp(an);
end
