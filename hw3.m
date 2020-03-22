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
