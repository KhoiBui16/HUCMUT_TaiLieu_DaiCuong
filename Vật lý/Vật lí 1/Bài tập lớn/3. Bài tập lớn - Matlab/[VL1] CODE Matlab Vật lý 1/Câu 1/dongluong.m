%Nguyen Tan Cuong
%http://www.facebook.com/asingleheart193
function dongluong
syms t
x= input('Nhap vao ham x(t), x(t) = ');
y= input('Nhap vao ham y(t), y(t) = ');
m= input('Nhap vao khoi luong cua vat, m= ');
vx= diff(x, t); vy= diff(y, t);
v= sqrt(vx^2 + vy^2);
disp('Van toc, v(t)= ')
disp(v)
vectov= [vx vy 0];
vectop= [x y 0];
vectoL = m*cross(vectop, vectov);
disp('Vecto dong luong la, L(vecto)= ');
disp(vectoL);
while 1
    T0= input('Nhap vao gia tri cua thoi gian de ve bieu do, t= ');
    if T0 > 0
    t= 0:1:T0;
    subplot(1, 2, 1); plot(subs(x), subs((y))); title ('Quy dao');xlabel('x'); ylabel('y') 
    subplot(1, 2, 2); plot(t, subs(sqrt(vectoL*vectoL'))); title ('L(t)');xlabel('t'); ylabel('L')
    break
    else
        disp('Thoi gian nhap vao t>0, vui long nhap lai!!!');
    end
end
end