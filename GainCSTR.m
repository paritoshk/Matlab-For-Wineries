
open_system('rct_CSTR_OL');
CrEQ = linspace(8.57,2,5)';  % concentrations
TrEQ = zeros(4,1);           % reactor temperatures
TcEQ = zeros(4,1);           % coolant temperatures

% Specify trim conditions
opspec = operspec('rct_CSTR_OL',5);
for k=1:4
   % Set desired residual concentration
   opspec(k).Outputs(1).y = CrEQ(k);
   opspec(k).Outputs(1).Known = true;
end

% Compute equilibrium condition and log corresponding temperatures
[op,report] = findop('rct_CSTR_OL',opspec,...
   findopOptions('DisplayReport','off'));
for k=1:4
   TrEQ(k) = report(k).Outputs(2).y;
   TcEQ(k) = op(k).Inputs.u;
end

% Linearize process dynamics at trim conditions
G = linearize('rct_CSTR_OL', 'rct_CSTR_OL/CSTR', op);
G.InputName = {'Cf','Tf','Tc'};
G.OutputName = {'Cr','Tr'};
subplot(311), plot(CrEQ,'b-*'), grid, title('Residual concentration'), ylabel('CrEQ')
subplot(312), plot(TrEQ,'b-*'), grid, title('Reactor temperature'), ylabel('TrEQ')
subplot(313), plot(TcEQ,'b-*'), grid, title('Coolant temperature'), ylabel('TcEQ')