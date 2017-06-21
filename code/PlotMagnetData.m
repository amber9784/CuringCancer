% plot all of the images

close all; clear all; clc;

load various_magnet_data.mat;

% A and CTR_A
AnalyzeImages( a1, a2, a3, 1, '-' );
AnalyzeImages( ca1, ca2, ca3, 1, '.-' );
title('A vs. CTR_A')

% B and CTR_B
AnalyzeImages( b1, b2, b3, 2, '-' );
AnalyzeImages( cb1, cb2, cb3, 2, '.-' );
title('B vs. CTR_B')

% AT and CTR_A
AnalyzeImages( at1, at2, at3, 3, '-' );
AnalyzeImages( ca1, ca2, ca3, 3, '.-' );
title('AT vs. CTR_A')

% BT and CTR_B
AnalyzeImages( bt1, bt2, bt3, 4, '-' );
AnalyzeImages( cb1, cb2, cb3, 4, '.-' );
title('BT vs. CTR_B')

