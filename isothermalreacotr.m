%% Data
A1=1.50E+04;	% [1/h]
E1=22870;        % [KJ/mol]
A2=6.00E+06;	% [1/h]
E2=19000;       % [KJ/mol]
		
T=288;	% [K]
V=1.5;	% [m3]
NA0=20;	% [kmol]
TauD=1;	% [h]


%% Calculations

% Kinetic constants
k1=A1*exp(-E1/1.987/T);  %[1/h]
k2=A2*exp(-E2/1.987/T);  %[1/h]

% Initial conditions
CA0 = NA0/V;    % [kmol]
CB0 = 0;       % [kmol]
CC0 = 0.;       % [kmol]
tau = 3;        % [h]


%% ODE solution
C0 = [CA0 CB0 CC0]';
[t, C] = ode45(@isothermalBatch, [0 tau], C0, [], k1,k2);


%% Post processing
CA = C(:,1);                % [kmol/m3]
CB = C(:,2);                % [kmol/m3]
CC = C(:,3);                % [kmol/m3]
PB = CB*V*24./(TauD+t);     % [kmol/day]

% Concentrations
figure;
plot(t,CA,'-o', t,CB,'-o', t,CC,'-o');
legend('CA -Anthocyanin', 'CB-WineColor', 'CC-WasteSoild');
xlabel('time [h]');
ylabel('C [kmol/m3]');
title('Concentrations');

[maxCB, iMaxCB] = max(CB);
tauMaxCB = t(iMaxCB);
fprintf('Optimization: Max CB($): %f @ Tau(s)=%f \n', ...
         maxCB, tauMaxCB);

%Production
figure;
plot(t,PB,'-o');
xlabel('time [h]');
ylabel('PB [kmol/day]');
title('Production');

[maxPB, iMaxPB] = max(PB);
tauMaxPB = t(iMaxPB);
fprintf('Optimization: Max PB($): %f @ Tau(s)=%f \n', ...
         maxPB, tauMaxPB);


