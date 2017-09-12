function im = carttrans(pim, nrows, ncols, cx, cy)

[rad, theta] = size(pim);      % Dimensions of polar image.

if nargin==3
    cx = ncols/2 + .5;         % Polar coordinate center, should match 
    cy = nrows/2 + .5;         % polartrans. Defaults to same.
end

[X,Y] = meshgrid(1:ncols, 1:nrows);

[TH,R] = cart2pol(X-cx,Y-cy);  % Polar coordinate arrays.
TH(TH<0) = TH(TH<0)+2*pi;      % Put angles in range [0, 2*pi].

rmax = max(R(:));              % Max radius.

xi = TH * (theta+1) / 2*pi;    % Query array for angles.
yi = R * rad / (rmax-1) + 1;   % Query array for radius.

pim = [pim pim(:,1)];          % Add first col to end of polar image.

[pX,pY] = meshgrid(1:theta+1, 1:rad);
im = interp2(pX, pY, pim, xi, yi);