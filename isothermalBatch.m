%% ODE system (defined locally, requires at least MATLAB-2016)
function dC = isothermalBatch(t,C, k1,k2)

    CA = C(1);      % [kmol/m3]
    CB = C(2);      % [kmol/m3]

    r1 = k1*CA;     % [kmol/m3/h]
    r2 = k2*CB;     % [kmol/m3/h]

    dCA = -r1;      % [kmol/m3/h]
    dCB = r1-r2;    % [kmol/m3/h]
    dCC = r2;       % [kmol/m3/h]

    dC = [dCA dCB dCC]';

end