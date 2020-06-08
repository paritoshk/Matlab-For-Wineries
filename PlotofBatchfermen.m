UM = 0.3; KS= 0.1; K1 =0.1; %Constants
K2= 1; Y=0.8;
Tint =  1; Tfin =40;
X0=0.01; S0 =10; P0=0;
Cint = [X0 S0 P0]; 
Tspan = linspace(0,Tfin,Tfin/Tint); %Time

[T,C] = ode45(@(t,y) batferm_func(t,y,UM,KS,K1,K2,Y),Tspan,Cint); %Solve ODE
plot(T,C(:,1),'-ro',T,C(:,2),'-k',T,C(:,3),'-b+')
%C(:,1):X, C(:2):S , C(:,3):P - temperature and concentration curve for Susbstrate, Product and Biomass X
title(['KS = ',num2str(KS)])
xlabel ('Time','fontsize',12,'fontweight','b')
ylabel('X,S,P','fontsize',12,'fontweight','b')
h = legend('X','S','P','Best');
set(h,'fontsize',8)

%Calculating U,RX, RS, RP by definiton 
U = UM*C(:,2)./(KS+C(:,2));
RX = U.*C(:,1);
RS = -RX/Y;
RP = (K1+k2*U).*C(:,1);
% Plot of U,RX,RS,RP
figure
plot(C(:,2),U,'-ro',RS,RX,'-k.')
title('U vs S and RX vs RS')
xlabel('S, RS', 'fontsize',12,'fontweight','b')
xlabel('U, RX', 'fontsize',12,'fontweight','b')
h= legend('U','RX','Best');
set(h,'fontsize',8);
pause
figure

% Loop by changing the KS parameter
for KS =0.1:0.2:1
    [T,C] = ode45(@(t,y) batferm_func(t,y,UM,KS,K1,K2,Y),Tspan,Cint); %solve ODE
    plot(T,C(:,1),'-ro',T,C(:,2),'-k',T,C(:,3),'-b+')
    % C(:,1):X, C(:2):S , C(:,3):P - temperature and concentration curve for Susbstrate, Product and Biomass X
    title(['KS = ',num2str(KS)])
    xlabel ('Time','fontsize',12,'fontweight','b')
    ylabel('X,S,P','fontsize',12,'fontweight','b')
    h = legend('X','S','P','Best');
    set(h,'fontsize',8)
    pause
end
