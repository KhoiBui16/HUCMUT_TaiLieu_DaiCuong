syms x y t vx vy v ax ay a att
symvar(t);
y = 8*t;
x=3*t.^2 -(4/3)*t.^3;
ezplot(x,y,[0,5])                    % v? qu? ??o c?a v?t trong kho?ng th?i gian 5s ??u
xlabel('x');
ylabel('y');
dx = diff (x, t) ;
dy = diff (y,t);
dt = diff (t);


vx = dx./dt;                            %tính ??o hàm x theo t
vy = dy./dt;                            %tính ??o hàm y theo t
dvx = diff(vx);
dvy = diff (vy); 
ax = dvx./dt;                          % tính ??o hàm vx theo t
ay = dvy./dt;                          % tính ??o hàm vy theo t
v = sqrt (vx.^2 + vy.^2);       % tính v?n t?c theo vx, vy
a = sqrt (ax.^2 + ay.^2);        % tính gia t?c theo ax, ay
dv = diff (v); 
att = dv./dt;                            % tính gia t?c ti?p tuy?n b?ng ??o hàm v?n t?c theo th?i gian
syms aht 
aht = sqrt (a.^2 - att.^2);        % tính gia t?c h??ng tâm d?a trên công th?c a^2 = aht^2 + att^2
syms R
R = v.^2/aht;                          % tính bán kính qu? ??o d?a trên công th?c aht=v^2/R
r=subs(R,1)                            % tính bán kính qu? ??o t?i th?i ?i?m t = 1s
fprintf('Ban kinh cong r=%f',r)
