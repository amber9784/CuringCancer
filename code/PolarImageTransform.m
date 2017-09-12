
function [polar_img, nx, ny] = PolarImageTransform( input_file, shrink_factor )
%%%%%% iris code %%%%%%
    im = input_file;
    [sx, sy] = size(im);
    nx = sx / shrink_factor;  ny = sy / shrink_factor;
    polar_img = polartrans(im(:,:),nx,ny,nx,ny,'linear','valid');
end





