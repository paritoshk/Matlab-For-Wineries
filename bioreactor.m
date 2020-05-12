%% Semi-Continuous fermentation of wines's yeast.
%% Monod type kinetics for biomass growth and substrate consumption.
%% Reference: M. Nihtila, J. Virkunnen, Practical identifiability of growth
%% and substrate consumption models, Biotechnology and Bioengineering, 19
%% (1977), 1831.

function yorknashik=bioreactor(t,x)

global u

% Inputs (2):
% u1 -- dilution factor (h-1)
% u2 -- substrate concentration in the feed (g/l)

%% States (2):
% x1 -- substrate concentration (g/l)
% x2 -- biomass concentration (g/l)

% model parameters
theta  = [0.31 0.18 0.55 0.05];

% differential equations
r      = theta(1) * x(2)/(theta(2) + x(2));    
 yorknashik(1) = (r - u(1) - theta(4)) * x(1);
 yorknashik(2) = -r * x(1)/theta(3) + u(1) * (u(2) - x(2));
 yorknashik    =  yorknashik';
