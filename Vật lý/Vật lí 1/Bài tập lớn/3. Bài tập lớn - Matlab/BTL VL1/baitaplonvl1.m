function tinhluctinhdien
n= input('Nhap vao so dien tich diem, n= ');
X= zeros(1, n); Y= zeros(1, n); q= zeros(1, n); FX= zeros(n); FY= zeros(n);
syms x y
for i= 1:n
    disp('Nhap vao toa do cua dien tich diem')
    X(i)= input(['x',num2str(i),'=']);
    Y(i)= input(['y',num2str(i),'=']);
    q(i)= input('Gia tri cua dien tich q(i)= ');
end
for i=1:n
    for j= 1:n
        r=sqrt((X(i)-X(j))^2+(Y(i)-Y(j))^2);
        if r~=0
          F1= (9*10^9*q(i)*q(j))/r^2*sign(X(j)-X(i));
          FX(i,j)= F1*abs(X(j)-X(i))/r;
          F2= (9*10^9*q(i)*q(j))/r^2*sign(Y(j)-Y(i));
          FY(i,j)= F2*abs(Y(j)-Y(i))/r;
        end
    end
end
FX= sum(FX); FY= sum(FY);
for i= 1:n
    disp(['FX(', num2str(i),') =', num2str(FX(i))]);
    disp(['FY(', num2str(i),') =', num2str(FY(i))]);
end
end
