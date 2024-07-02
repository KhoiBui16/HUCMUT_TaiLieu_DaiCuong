%Nguyen Tan Cuong
%http://www.facebook.com/asingleheart193
%Cac tiep can khac: [Ex Ey]= - gradient(V)
function dientruong
clf
syms x y real
V= input('Nhap vao bieu thuc cua hieu dien the V(x, y), V(x y)= ');
[X, Y]= meshgrid(-10:1:10);
Ex= zeros(size(X)); Ey= zeros(size(X)); Z= zeros(size(X));
for i= 1:size(X, 1)
    for j = 1: size(X, 2)
        Ex(i, j)= - subs(diff(V, x), {x y}, {X(i, j) Y(i, j)});
        Ey(i, j)= - subs(diff(V, y), {x y}, {X(i, j) Y(i, j)});
        Z(i, j)= subs(V, {x y}, {X(i, j) Y(i, j)});
        if imag(Z(i, j)) ~= 0
            Z(i, j)= 0;
            Ex(i, j)= 0;
            Ey(i, j)= 0;
        end
    end
end
subplot(1, 2, 1); surf(X, Y, Z); title('Dien the')
subplot(1, 2, 2); quiver(X, Y, X + Ex, Y +Ey);title ('Dien truong')
end