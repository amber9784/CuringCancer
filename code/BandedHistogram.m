
function [res] = BandedHistogram(img, height_bins, intensity_bins)
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
        [N,~] = imhist(uint8(slab),intensity_bins);     
        %   5:end is based on visual inspection
        %   find a automated way to cut off outlier pixel 
        %   regions.
%         histograms = [histograms; N(5:end)';];
        histograms = [histograms; N';];
%         clf
    end
    res = histograms';    
end