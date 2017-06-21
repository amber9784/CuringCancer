
% Perform 'iris analysis' and plot the results  

close all;
clear all;
clc;
pkg load image;

disp('Performing analysis...')

%markers  = {'+', 'o', '*', '.', 'x', 's', 'd', '^', 'v', '>', '<', 'p', 'h'};
%colors   = {'r', 'g', 'b', 'c', 'm', 'y', 'k', 'w'};
controls = {"06-19-2017/tiffs/ctr1.tiff","06-19-2017/tiffs/ctr2.tiff","06-19-2017/tiffs/ctr3.tiff","06-19-2017/tiffs/ctr4.tiff"};
ttfs     = {"06-19-2017/tiffs/ttf1.tiff","06-19-2017/tiffs/ttf2.tiff","06-19-2017/tiffs/ttf3.tiff","06-19-2017/tiffs/ttf4.tiff"};

for i=1:max(size(controls))
  [c, t] = PerformIrisAnalysis( controls{i}, ttfs{i}, 2, 5, 60, 2, i, 1 );
  
  PlotIrisData(c, t, i);
  
end

disp('done. thanks!')



%fnum = 1;
%symbol_num = 1;
%figure(fnum),
%hold on
%for i=1:max(size(controls))
%  symbol_num = i;
%  [c, t] = PerformIrisAnalysis( controls{i}, ttfs{i}, 2, 20, 60, 2, i, 0 );
%  line_type = strcat(markers{fnum}, colors{symbol_num});
%  PlotIrisData(c, fnum, line_type);
%  
%end
%hold off
%
%fnum = 2;
%symbol_num = 1;
%figure(fnum),
%hold on
%for i=1:max(size(ttfs))
%  symbol_num = i;
%  [c, t] = PerformIrisAnalysis( controls{i}, ttfs{i}, 2, 20, 60, 2, i, 0 );
%  line_type = strcat(markers{fnum}, colors{symbol_num});
%  PlotIrisData(t, fnum, line_type);
%  
%end
%hold off