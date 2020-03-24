% Eric Pearson, Sara Bashir
% NERS 442 
% 25 March 2020 
% Homework 3

%% Startup Core
% 1
burn_bor = dlmread('burn_bor.txt');
burnup = burn_bor(:, 1);
boron = burn_bor(:, 2);

plot(burnup, boron); 
xlabel('Burnup (GWd/T)'); ylabel('Boron (ppm)');
title('Fig. 1: Boron Concentration vs Burnup for Startup Core (PWR)');

% 1a
orig_map = dlmread('1a.txt');
assembly_enrichments = dlmread('1a_enrich.txt');
assemblies = assembly_enrichments(:, 1);
sz = size(orig_map);
new_map = zeros(sz);
pyrex = zeros(sz);
for i = 1:sz(1)
   for j = 1:sz(2)
       temp = orig_map(i,j);
       for z = 1:size(assemblies)
           if assemblies(z) == temp
               position = z;
           end
       new_map(i,j) = assembly_enrichments(position, 2);
       pyrex(i,j) = assembly_enrichments(position, 3);
       end
   end
end
figure(2);
b = bar3(new_map); 
h = colorbar;
newmap = parula;
ncol = size(h,1);
newmap(1,:) = [1 1 1];
colormap(newmap);
set(get(h,'label'),'string','Enrichment');
axis tight;
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'flat';
end
for x = 1:sz(1)
    for y = 1:sz(2)
        if new_map(x,y) ~= 0
        text(x, y, new_map(x,y), num2str(new_map(x,y)), ...
        'HorizontalAlignment','center', 'VerticalAlignment','bottom');
        text(x, y, pyrex(x,y), num2str(pyrex(x,y)), ...
        'HorizontalAlignment','center', 'VerticalAlignment','top');
        end
    end
end
title('Fig. 2: Watts Bar I Startup Core Loading Pattern (PWR)')

%close all;
%% 2: Equilibrium Cycle
% 2a
eq_cycle = dlmread('pwr2input.txt');
burnup2a = eq_cycle(:, 1);
boron2a = eq_cycle(:, end);
figure(3); plot(burnup2a, boron2a); 
xlabel('Burnup (GWd/T)'); ylabel('Boron (ppm)');
title('Fig. 3: Boron Concentration vs Burnup for Equilibrium Cycle (PWR)');

% 2b
% ask eric about if cycle # is ok axis title
cycles = 1:8;
max_diffs = [17.3622192118096 16.6683403333263 15.4544838214857 ...
             9.85137954762234 1.94900888861467 0.841890608866422 ...
             0.325540349198448 7.651817188342136e-2];
figure(4);
plot(cycles, max_diffs);
title('Fig. 4: Convergence in Burnup Over Cycles (PWR)');
xlabel('Cycle Number'); ylabel('Max Burnup Difference from Previous Cycle (GWd/T)');

%close all;
%% 3: Reactivity Coefficients, BOC
k_base_boc = 1.005792; k_doppler_boc = 1.004477; k_cool_boc = 1.005234;
rho_doppler_boc = (1/k_base_boc) - (1/k_doppler_boc);
alpha_doppler_boc = rho_doppler_boc/50;
rho_cool_boc = (1/k_base_boc) - (1/k_cool_boc);
alpha_cool_boc = rho_cool_boc/5.4;

%% 4: Reactivity Coefficients, EOC
k_base_eoc = 1.001121; k_doppler_eoc = 0.999731; k_cool_eoc = 0.998388;
rho_doppler_eoc = (1/k_base_eoc) - (1/k_doppler_eoc);
alpha_doppler_eoc = rho_doppler_eoc/50;
rho_cool_eoc = (1/k_base_eoc) - (1/k_cool_eoc);
alpha_cool_eoc = rho_cool_eoc/5.4;

%% 5: BOC and EOC Analysis
% THIS QUESTION ASKS FOR EXPLANATION OF SHIFT IN POWER DIST
% 5a
