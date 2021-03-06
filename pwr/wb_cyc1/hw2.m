% Eric Pearson
close all;
clear;
clc;

%%
% 1a HZP
z = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0.6661, 0.7519, 0.6661, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0.8620, 1.2801, 1.1502, 0.6332, 1.1502, 1.2801, 0.8620, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0.6450, 1.1874, 1.3610, 1.4447, 1.3931, 1.4447, 1.3610, 1.1874, 0.6450, 0, 0, 0, 0;
0, 0, 0, 0.6450, 0.4944, 1.0638, 1.3694, 1.4135, 1.4443, 1.4135, 1.3694, 1.0638, 0.4944, 0.6450, 0, 0, 0;
0, 0, 0.8620, 1.1874, 1.0638, 1.1364, 1.0671, 1.0959, 0.9823, 1.0959, 1.0671, 1.1364, 1.0638, 1.1874, 0.8620, 0, 0;
0, 0, 1.2800, 1.3610, 1.3694, 1.0670, 0.4991, 0.6493, 0.3977, 0.6493, 0.4991, 1.0670, 1.3694, 1.3610, 1.2800, 0, 0;
0, 0.6661, 1.1502, 1.4447, 1.4135, 1.0959, 0.6493, 0.5312, 0.4138, 0.5312, 0.6493, 1.0959, 1.4135, 1.4447, 1.1502, 0.6661, 0;
0, 0.7519, 0.6332, 1.3930, 1.4443, 0.9823, 0.3977, 0.4138, 0.2483, 0.4138, 0.3977, 0.9823, 1.4443, 1.3930, 0.6332, 0.7519, 0;
0, 0.6661, 1.1502, 1.4447, 1.4135, 1.0959, 0.6493, 0.5312, 0.4138, 0.5312, 0.6493, 1.0959, 1.4135, 1.4447, 1.1502, 0.6661, 0;
0, 0, 1.2800, 1.3610, 1.3694, 1.0670, 0.4991, 0.6493, 0.3977, 0.6493, 0.4991, 1.0670, 1.3694, 1.3610, 1.2800, 0, 0;
0, 0, 0.8620, 1.1874, 1.0638, 1.1364, 1.0671, 1.0959, 0.9823, 1.0959, 1.0671, 1.1364, 1.0638, 1.1874, 0.8620, 0, 0;
0, 0, 0, 0.6450, 0.4944, 1.0638, 1.3694, 1.4135, 1.4443, 1.4135, 1.3694, 1.0638, 0.4944, 0.6450, 0, 0, 0;
0, 0, 0, 0, 0.6450, 1.1874, 1.3610, 1.4447, 1.3931, 1.4447, 1.3610, 1.1874, 0.6450, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0.8620, 1.2801, 1.1502, 0.6332, 1.1502, 1.2801, 0.8620, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0.6661, 0.7519, 0.6661, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

figure(1);
b = bar3(z);
h = colorbar;
set(get(h,'label'),'string','Normalized Assembly Power');
axis tight;
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'flat';
end
title({'Fig. 5a: Normalized Assembly Power Distribution';'Hot Zero Power';'CR Banks 4 & 6 withdrawn';'k_{eff}=1.0, B=1128.64 ppm'});
xlabel('x Coordinate');
ylabel('y Coordinate');
zlabel('Normalized Assembly Power');

%%
% 1b
z = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0.6279, 0.8364, 0.6279, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0.5994, 0.9175, 1.0354, 1.0638, 1.0354, 0.9175, 0.5994, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0.6368, 0.9200, 0.9935, 1.1390, 1.2190, 1.1390, 0.9935, 0.9200, 0.6368, 0, 0, 0, 0;
0, 0, 0, 0.6368, 0.8364, 0.9693, 1.1029, 1.1505, 1.1920, 1.1505, 1.1029, 0.9693, 0.8364, 0.6368, 0, 0, 0;
0, 0, 0.5994, 0.9200, 0.9693, 1.0908, 1.1360, 1.1709, 1.0977, 1.1709, 1.1360, 1.0908, 0.9693, 0.9200, 0.5994, 0, 0;
0, 0, 0.9175, 0.9935, 1.1029, 1.1360, 1.1812, 1.1552, 1.1513, 1.1552, 1.1812, 1.1360, 1.1029, 0.9935, 0.9175, 0, 0;
0, 0.6279, 1.0354, 1.1390, 1.1505, 1.1709, 1.1552, 1.1411, 1.0583, 1.1411, 1.1552, 1.1709, 1.1505, 1.1390, 1.0354, 0.6279, 0;
0, 0.8364, 1.0638, 1.2190, 1.1920, 1.0977, 1.1513, 1.0583, 1.0927, 1.0583, 1.1513, 1.0977, 1.1920, 1.2190, 1.0638, 0.8364, 0;
0, 0.6279, 1.0354, 1.1390, 1.1505, 1.1709, 1.1552, 1.1411, 1.0583, 1.1411, 1.1552, 1.1709, 1.1505, 1.1390, 1.0354, 0.6279, 0;
0, 0, 0.9175, 0.9935, 1.1029, 1.1360, 1.1812, 1.1552, 1.1513, 1.1552, 1.1812, 1.1360, 1.1029, 0.9935, 0.9175, 0, 0;
0, 0, 0.5994, 0.9200, 0.9693, 1.0908, 1.1360, 1.1709, 1.0977, 1.1709, 1.1360, 1.0908, 0.9693, 0.9200, 0.5994, 0, 0;
0, 0, 0, 0.6368, 0.8364, 0.9693, 1.1029, 1.1505, 1.1920, 1.1505, 1.1029, 0.9693, 0.8364, 0.6368, 0, 0, 0;
0, 0, 0, 0, 0.6368, 0.9200, 0.9935, 1.1390, 1.2190, 1.1390, 0.9935, 0.9200, 0.6368, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0.5994, 0.9175, 1.0354, 1.0638, 1.0354, 0.9175, 0.5994, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0.6279, 0.8364, 0.6279, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

figure(2);
b = bar3(z);
h = colorbar;
set(get(h,'label'),'string','Normalized Assembly Power');
axis tight;
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'flat';
end
title({'Fig. 2: Normalized Assembly Power Distribution';'Hot Zero Power';'All CR Banks withdrawn';'k_{eff}=1.027624, B=1128.64 ppm'});
xlabel('x Coordinate');
ylabel('y Coordinate');
zlabel('Normalized Assembly Power');

%%
% 1c

% Definition of worth
beta = 0.0076;
cr_worth = @(k1, k2) (1/k1-1/k2)/beta;

% CR Bank 1
z = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0.6499, 0.7333, 0.6499, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0.8421, 1.2510, 1.1245, 0.6193, 1.1245, 1.2510, 0.8421, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0.6310, 1.1623, 1.3340, 1.4181, 1.3688, 1.4181, 1.3340, 1.1623, 0.6310, 0, 0, 0, 0;
0, 0, 0, 0.6310, 0.4849, 1.0461, 1.3503, 1.3979, 1.4300, 1.3979, 1.3503, 1.0461, 0.4849, 0.6310, 0, 0, 0;
0, 0, 0.8421, 1.1623, 1.0461, 1.1238, 1.0637, 1.1030, 0.9912, 1.1030, 1.0637, 1.1238, 1.0461, 1.1623, 0.8421, 0, 0;
0, 0, 1.2510, 1.3340, 1.3503, 1.0637, 0.5121, 0.6955, 0.4353, 0.6955, 0.5121, 1.0637, 1.3503, 1.3340, 1.2510, 0, 0;
0, 0.6499, 1.1245, 1.4181, 1.3979, 1.1030, 0.6955, 0.6570, 0.5894, 0.6570, 0.6955, 1.1030, 1.3979, 1.4181, 1.1245, 0.6499, 0;
0, 0.7333, 0.6193, 1.3688, 1.4300, 0.9912, 0.4353, 0.5894, 0.6654, 0.5894, 0.4353, 0.9912, 1.4300, 1.3688, 0.6193, 0.7333, 0;
0, 0.6499, 1.1245, 1.4181, 1.3979, 1.1030, 0.6955, 0.6570, 0.5894, 0.6570, 0.6955, 1.1030, 1.3979, 1.4181, 1.1245, 0.6499, 0;
0, 0, 1.2510, 1.3340, 1.3503, 1.0637, 0.5121, 0.6955, 0.4353, 0.6955, 0.5121, 1.0637, 1.3503, 1.3340, 1.2510, 0, 0;
0, 0, 0.8421, 1.1623, 1.0461, 1.1238, 1.0637, 1.1030, 0.9912, 1.1030, 1.0637, 1.1238, 1.0461, 1.1623, 0.8421, 0, 0;
0, 0, 0, 0.6310, 0.4849, 1.0461, 1.3503, 1.3979, 1.4300, 1.3979, 1.3503, 1.0461, 0.4849, 0.6310, 0, 0, 0;
0, 0, 0, 0, 0.6310, 1.1623, 1.3340, 1.4181, 1.3688, 1.4181, 1.3340, 1.1623, 0.6310, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0.8421, 1.2510, 1.1245, 0.6193, 1.1245, 1.2510, 0.8421, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0.6499, 0.7333, 0.6499, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

figure(3);
b = bar3(z);
h = colorbar;
set(get(h,'label'),'string','Normalized Assembly Power');
axis tight;
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'flat';
end
title({'Fig. 5b: Normalized Assembly Power Distribution';'Hot Zero Power';'CR Banks 1, 4, & 6 withdrawn';'k_{eff}=1.000464, B=1128.64 ppm'});
xlabel('x Coordinate');
ylabel('y Coordinate');
zlabel('Normalized Assembly Power');
cr_1_worth = cr_worth(1, 1.000464);

% CR Bank 8
z = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0.2501, 0.3235, 0.3307, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0.2543, 0.4126, 0.4219, 0.2827, 0.6212, 0.7990, 0.6096, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0.1647, 0.3384, 0.4372, 0.5436, 0.6490, 0.8276, 0.9312, 0.9662, 0.6560, 0, 0, 0, 0;
0, 0, 0, 0.1145, 0.1089, 0.2850, 0.4329, 0.5471, 0.7074, 0.8892, 1.1008, 1.1047, 0.7161, 1.2504, 0, 0, 0;
0, 0, 0.1281, 0.1910, 0.2004, 0.2675, 0.3243, 0.4311, 0.5201, 0.7933, 1.0688, 1.6037, 2.0048, 2.7083, 2.2100, 0, 0;
0, 0, 0.1829, 0.2067, 0.2330, 0.2166, 0.1397, 0.2620, 0.2429, 0.5882, 0.6709, 1.9530, 3.0575, 3.6385, 3.9138, 0, 0;
0, 0.0888, 0.1597, 0.2117, 0.2263, 0.2034, 0.1677, 0.2202, 0.2955, 0.6025, 1.0789, 2.3263, 3.6229, 4.6581, 4.8969, 3.2343, 0;
0, 0.0991, 0.0871, 0.2024, 0.2258, 0.1759, 0.1002, 0.1738, 0.1876, 0.5047, 0.7046, 2.2116, 3.9236, 5.1534, 5.2020, 4.3945, 0;
0, 0.0888, 0.1597, 0.2117, 0.2263, 0.2034, 0.1677, 0.2202, 0.2955, 0.6025, 1.0789, 2.3263, 3.6229, 4.6581, 4.8969, 3.2343, 0;
0, 0, 0.1829, 0.2067, 0.2330, 0.2166, 0.1397, 0.2620, 0.2429, 0.5882, 0.6709, 1.9530, 3.0575, 3.6385, 3.9138, 0, 0;
0, 0, 0.1281, 0.1910, 0.2004, 0.2675, 0.3243, 0.4311, 0.5201, 0.7933, 1.0688, 1.6037, 2.0048, 2.7083, 2.2100, 0, 0;
0, 0, 0, 0.1145, 0.1089, 0.2850, 0.4329, 0.5471, 0.7074, 0.8892, 1.1008, 1.1047, 0.7161, 1.2504, 0, 0, 0;
0, 0, 0, 0, 0.1647, 0.3384, 0.4372, 0.5436, 0.6490, 0.8276, 0.9312, 0.9662, 0.6560, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0.2543, 0.4126, 0.4219, 0.2827, 0.6212, 0.7990, 0.6096, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0.2501, 0.3235, 0.3307, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

figure(4);
b = bar3(z);
h = colorbar;
set(get(h,'label'),'string','Normalized Assembly Power');
axis tight;
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'flat';
end
title({'Fig. 4: Normalized Assembly Power Distribution';'Hot Zero Power';'CR Banks 4 ,6, & 8 withdrawn';'k_{eff}=1.009528, B=1128.64 ppm'});
xlabel('x Coordinate');
ylabel('y Coordinate');
zlabel('Normalized Assembly Power');
cr_8_worth = cr_worth(1, 1.009528);

%%
% 2a

hfp_critical_boron = 1208.43; % ppm
hzp_critical_boron = 1412.24; % ppm 
% Due to TH feedback

% Definition of worth
beta = 0.0076;
boron_worth = @(k1, k2, boron) (1/k1-1/k2)/beta/boron;

hfp_boron_worth = boron_worth(1.0, 1.063070, 604.215); % [$/ppm]
hzp_boron_worth = boron_worth(1.0, 1.153793, 1412.24); % [$/ppm]

%%
% 2b

cuts = [ 363.30; 352.90; 340.10; 318.70; 288.70; 258.70; 228.70; 198.70; 168.70; 138.70; 108.70; 78.70; 48.70; 26.20; 13.20; 3.85];

axial_pwr_base = [ 0.067; 0.127; 0.211; 0.352; 0.550; 0.754; 0.964; 1.180; 1.388; 1.566; 1.664; 1.610; 1.307; 0.885; 0.565; 0.375];
step1 = [ 0.066; 0.125; 0.208; 0.347; 0.544; 0.745; 0.954; 1.168; 1.377; 1.556; 1.660; 1.616; 1.331; 0.927; 0.600; 0.398];
step2 = [ 0.063; 0.121; 0.201; 0.335; 0.525; 0.721; 0.925; 1.137; 1.347; 1.535; 1.658; 1.651; 1.413; 0.994; 0.642; 0.427];
step3 = [ 0.060; 0.113; 0.189; 0.315; 0.496; 0.684; 0.883; 1.093; 1.309; 1.513; 1.674; 1.727; 1.508; 1.060; 0.684; 0.454];
step4 = [ 0.055; 0.104; 0.174; 0.292; 0.461; 0.640; 0.834; 1.045; 1.272; 1.507; 1.724; 1.828; 1.577; 1.100; 0.708; 0.470];
step5 = [ 0.050; 0.096; 0.160; 0.269; 0.428; 0.601; 0.793; 1.012; 1.260; 1.539; 1.816; 1.880; 1.592; 1.102; 0.708; 0.470];
step6 = [ 0.047; 0.090; 0.151; 0.255; 0.408; 0.579; 0.776; 1.008; 1.288; 1.616; 1.850; 1.872; 1.566; 1.078; 0.691; 0.458];
step7 = [ 0.046; 0.087; 0.146; 0.248; 0.400; 0.574; 0.780; 1.034; 1.347; 1.653; 1.846; 1.841; 1.526; 1.046; 0.669; 0.444];
step8 = [ 0.045; 0.086; 0.144; 0.246; 0.401; 0.582; 0.804; 1.085; 1.402; 1.667; 1.824; 1.796; 1.477; 1.008; 0.644; 0.426];
step9 = [ 0.046; 0.087; 0.147; 0.251; 0.412; 0.606; 0.852; 1.152; 1.432; 1.658; 1.787; 1.743; 1.424; 0.967; 0.617; 0.408];
step10 = [ 0.048; 0.091; 0.153; 0.263; 0.437; 0.652; 0.923; 1.191; 1.437; 1.636; 1.745; 1.689; 1.371; 0.928; 0.591; 0.391];
step11 = [ 0.051; 0.098; 0.164; 0.283; 0.473; 0.710; 0.961; 1.204; 1.430; 1.613; 1.710; 1.647; 1.331; 0.899; 0.572; 0.378];
step12 = [ 0.055; 0.105; 0.177; 0.307; 0.515; 0.747; 0.980; 1.209; 1.421; 1.594; 1.682; 1.615; 1.302; 0.877; 0.557; 0.368];
step13 = [ 0.060; 0.115; 0.194; 0.336; 0.553; 0.772; 0.992; 1.209; 1.412; 1.577; 1.659; 1.588; 1.277; 0.858; 0.545; 0.360];
step14 = [ 0.067; 0.127; 0.216; 0.366; 0.576; 0.786; 0.997; 1.207; 1.404; 1.564; 1.641; 1.568; 1.259; 0.845; 0.537; 0.354];
step15 = [ 0.071; 0.135; 0.225; 0.374; 0.581; 0.788; 0.998; 1.206; 1.402; 1.560; 1.637; 1.563; 1.254; 0.842; 0.534; 0.353];
all_axial_power = [axial_pwr_base, step1, step2, step3, step4, step5, step6, ...
                   step7, step8, step9, step10, step11, step12, step13, step14, ...
                   step15];

k_at_steps = [1, 1.000111, 1.000441, 1.001010, 1.001837, 1.002854, 1.003854, ...
             1.004764, 1.005714, 1.006642, 1.007494, 1.008120, 1.008584, 1.008968, ...
             1.009240, 1.009311];
           
figure(5);
heatmap({'Radially Integrated, Normalized Power'},cuts,axial_pwr_base,...
         'Colormap',parula);
title({'Fig. 6: Heatmap of Radially Integrated, Normalized Power';...
       'Hot Full Power';'CR Banks 4 & 6 withdrawn';'k=1.0, B=880.54 ppm'});
ylabel('Distance From Bottom [cm]');

figure(6);
b = bar3(all_axial_power);
tick = get(gca,{'XTick'});
x = linspace(0,15,length(tick{1}));
set(gca,'XTickLabel',x)
set(gca,'YTick', 1:16);
set(gca,'YTickLabel',cuts')
colorbar
axis tight;
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'flat';
end
title({'Fig. 7: Normalized Axial Power Distribution';'Hot Full Power';...
       'CR Banks 4, 6 withdrawn'});
xlabel('Removal Increment of Bank 5 [15 step incr.]');
ylabel('Distance From Bottom [cm]');
zlabel('Radially Integrated Normalized Power');

k_at_steps = [1, 1.000111, 1.000441, 1.001010, 1.001837, 1.002854, 1.003854, ...
             1.004764, 1.005714, 1.006642, 1.007494, 1.008120, 1.008584, 1.008968, ...
             1.009240, 1.009311];

% Definition of worth
beta = 0.0076;
cr_worth = @(k1, k2) (1./k1-1./k2)./beta;
int_bank_worth = cr_worth(1,k_at_steps(2:end));

figure(7);
plot((0:15), [0,int_bank_worth]);
title('Fig. 8: Integral Control Rod Bank 5 Worth');
ylabel('Worth [$]');
xlabel('Removal Increment of Bank 5 [15 step incr.]');
axis([0 15 0 1.25]);


%%
%3a

% Definition of MTC
beta = 0.0076;
mtc = @(k1, k2, delta_t) (1/k1-1/k2)/beta/delta_t; % [$/C]

hzp_mtc = mtc(1, 1.000296, 10);
hfp_mtc = mtc(1, 1.000209, 10);

%3b
% Definition of doppler
doppler = @(k1, k2, delta_t) (1/k1-1/k2)/beta/delta_t; % [$/C]

hzp_doppler = doppler(1, 1.000263, 10);
hfp_doppler = doppler(1, 1.000243, 10);

%3c
% Definition of boron worth
boron_worth = @(k1, k2, delta_b) (k2-k1)/delta_b; % [pcm/ppm]

hzp_boron = boron_worth(1, 1.001074, 10)
hfp_boron = boron_worth(1, 1.001119, 10)

%%
% 4a

% All with 2x2 mesh, boron = 880.54
keff_hybrid = 1.000000;
keff_fdm = 1.009873;
keff_anm = 0.999995;
keff_nemmg = 1.000335;

% 4b

% Boron = 880.49
anm_time = 0.860; % sec
fdm_meshes = [4, 16, 36, 64, 100];
fdm_time = [0.615, 1.860, 4.637, 7.341, 14.625];
fdm_keff = [1.009878, 1.004152, 1.002570, 1.001822, 1.001388];

figure(9);
plot(fdm_meshes,fdm_time,'-k');
title('Finite Difference Method Exectution Time and Resolution');
xlabel('Meshes per Assembly');
ylabel('Reported k_{eff}');

figure(10);
plot(fdm_time,fdm_keff,'-k');
title('Finite Difference Method Exectution Time and k_{eff}');
xlabel('Execution Time [sec]');
ylabel('Reported k_{eff}');



