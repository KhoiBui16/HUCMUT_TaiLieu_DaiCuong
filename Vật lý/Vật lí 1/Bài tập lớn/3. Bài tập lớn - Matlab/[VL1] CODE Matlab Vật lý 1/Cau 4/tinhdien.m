%Nguyen Tan Cuong
%http://www.facebook.com/asingleheart193
%Cac gia thiet tinh toan:
%Luc tinh dien do tich thu i tac dung len dien tich thu j theo phuong X||Y
%duoc luu vao F(i, j), voi F(i, j)= - F(j, i) theo dinh luat 3 Newton
%(i= j) thi F(i, j)=0 
%Bai toan duoc nhap toi dau, tinh toi do.
function tinhdien
n= input('Nhap vao so dien tich diem, n= ');
X= zeros(1, n); Y= zeros(1, n); q= zeros(1, n); FX= zeros(n); FY= zeros(n);
syms x y
for i= 1:n
    disp('Nhap vao toa do cua dien tich diem')
    X(i)= input('x= ');
    Y(i)= input('y= ');
    q(i)= input('Gia tri cua dien tich, q(i)= ');
    for j= 1:i-1
        F= 9*10^9*q(i)*q(j);
        if (X(i)- X(j)) ~= 0
            FX(i, j)= - F/(X(i)- X(j))^2*sign(X(i)- X(j));
        end
        if (Y(i)- Y(j)) ~= 0
            FY(i, j)= - F/(Y(i)- Y(j))^2*sign(X(i)- X(j));
        end
    end
end
FX= FX - FX.'; FY= FY - FY.';
FX= sum(FX, 1); FY= sum(FY, 1);
for i= 1:n
    disp(['FX(', num2str(i),') =', num2str(FX(i))]);
    disp(['FY(', num2str(i),') =', num2str(FY(i))]);
end
end