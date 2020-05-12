clear all
close all

% Step test for Bioreactor

global u

% Initial Conditions for the States
x_ss = [50;0.18];   %from Zenteno 2010 paper Biomass conc 0.18 g/l and substrates 
                    %are Nutrients include N–NH4, Mg, Fe, Co, Mn, I, Ni, and Zn. 
                    %The best hydrogen production potential was obtained at a COD of 50 g L?1 without nutrient addition. 

% Model Inputs
u = [0.08;15]; % alchohol content is 8 so that is the dilution factor, 

% Final Time (days)
tf = 6;

[t,x] = ode15s('bioreactor',[0 tf],x_ss);

% Parse out the state values
x1 = x(:,1);
x2 = x(:,2);

% Plot the results
figure(1);
subplot(2,1,1);
plot(t,x1);
title('Nutrients for Winemakers Yeast Concentration')
ylabel('Conc (g/L)')

subplot(2,1,2);
plot(t,x2);
title('Yeast Concentration')
ylabel('Conc (g/L)')
xlabel('time (days)')

