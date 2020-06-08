function dy = batferm_func(t,y,UM,KS,K1,K2,Y)
dy = zeros(3,1); % a column vector
if (y(2)<0)
    y(2)=0; end;
U = UM*y(2)/(KS+y(2));
dy(1) = U*y(1); %RX
dy(2) = -dy(1)/Y; %RS
dy(3) = (K1+K2*U)*y(1); %Rp
