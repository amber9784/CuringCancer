function [] = WriteRGBTiff(img, filename)

    t = Tiff(filename,'w');
    data = uint16(img);
    % Setup tags
    % Lots of info here:
    % http://www.mathworks.com/help/matlab/ref/tiffclass.html
    tagstruct.ImageLength     = size(data,1);
    tagstruct.ImageWidth      = size(data,2);
    tagstruct.Photometric     = Tiff.Photometric.MinIsBlack;
    tagstruct.BitsPerSample   = 16;
    tagstruct.SamplesPerPixel = 3;
    tagstruct.RowsPerStrip    = 16;
    tagstruct.PlanarConfiguration = Tiff.PlanarConfiguration.Chunky;
    tagstruct.Software        = 'MATLAB';
    t.setTag(tagstruct)
    t.write(data);
    t.close();
end