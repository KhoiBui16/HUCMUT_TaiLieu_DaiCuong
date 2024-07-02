%Nguyen Tan Cuong HCMUT
function giandoPV
k= input('Nhap vào so qua trinh, k= ');
n= input('Nhap vao so mol chat khi, n= ');
CONG= 0; R= 8.31; clf;
hold on
xlabel('V'); ylabel('P');
P1= input('Nhap vao P1, P1= ');
V1= input('Nhap vao V1, V1= ');
P(k)= 0; V(k)= 0;
for i= 1:k
    P(i)= P1; V(i)= V1;
    QUATRINH= menu(['Chon qua trinh cua giai doan thu ' num2str(i)], 'Dang tich', 'Dang ap', 'Dang nhiet');
    disp(['Qua trinh thu ' num2str(i) ', P1= ' num2str(P1) ', V1= ' num2str(V1)])
    switch QUATRINH
        case 1
            disp(['Qua trinh dang tich, V2 = V1= ', num2str(V1)]);
            P2= input('Nhap vao qua P2, P2= ');
            V2= V1;
            CONG= CONG + 0;
            plot([V1 V2], [P1 P2]);
            P1= P2;
            V1= V2;
            hold on
        case 2
            disp(['Qua trinh dang ap P1= P2= ', num2str(P1)])
            P2= P1;
            V2= input('Nhap vao V2, V2= ');
            CONG = CONG + P1*(V2 - V1);
            syms x y
            plot([V1 V2], [P1 P2]);
            P1= P2;
            V1= V2;
            hold on
        case 3
            disp('Qua trinh nhiet')
            V2= input('Nhap vao V2, V2= ');
            T= P1*V1/(n*R);
            disp(['Nhiet do la, T= ', num2str(T), 'K']);
            CONG= CONG + n*R*T*log(V1/V2);
            C= P1*V1;
            syms x y
            ezplot(C/x, [V1 V2]);
            P1= P1*V1/V2;
            disp(['Ap suat la, P2= ', num2str(P1)])
            V1= V2;
            hold on
    end
    disp(' ')
end
axis([min(V - 0.5), max(V + 0.5), min(V - 0.5), max(P + 0.5)])
title('Gian do P - V')
disp('Cong cua qua trinh');
disp(CONG)
end
