function [threshed] = ThresholdImage(Image, t_value)

    img = Image > t_value;
    
    t_img = double(Image) .* (double(img));
    
%     imshow(uint8(threshed))
    
%     pause;

    threshed = uint8(t_img);

end