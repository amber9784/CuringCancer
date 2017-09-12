
function [res] = BandedHistogram(img, height_bins, intensity_bins, cx, cy)
    [sx, sy] = size(img);    
    pix_per_bin = ceil( sx / height_bins );    
    n_iters = ceil( sx / pix_per_bin );
    histograms = [];
% %     5 * intensity_bins
%     pause;
    for i=1:pix_per_bin:sx        
        if((i+pix_per_bin) > sx)
            slab = uint8(img(i:sx, :));            
        else
            slab = uint8(img(i:(i+pix_per_bin), :));      
        end        
        in_cart = carttrans(slab, cx, cy, cx, cy) >0;
        n_vals_in_cart = nnz(in_cart);
        [N,~] = imhist(uint8(slab),intensity_bins);     
        N=N/n_vals_in_cart;
        %   5:end is based on visual inspection
        %   find a automated way to cut off outlier pixel 
        %   regions.
%         histograms = [histograms; N(5:end)';];
        histograms = [histograms; N';];
%         clf
    end
    res = histograms';    
end