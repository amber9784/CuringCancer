% Glioblastoma 'iris' analysis

function [res] = AnalyzeImages( img1, img2, img3, f_n, plottype )


    b_hist1 = BandedHistogram(img1, 60, 2)';
    b_hist2 = BandedHistogram(img2, 60, 2)';    
    b_hist3 = BandedHistogram(img3, 60, 2)';
    

    
    [sx1, ~] = size(b_hist1);    
    
    % fprintf('Now performing Two-sample Kolmogorov-Smirnov test')
    % get distribution similarity between images for each band
    
    v1=[];
    v2=[];
    v3=[];
    
    
%     figure(111),
    for i=1:sx1
        
%         clf
% size(b_hist1(i,:))
% pause;
    v1 = [v1; b_hist1(i,2);];
    v2 = [v2; b_hist2(i,2);];
    v3 = [v3; b_hist3(i,2);];
%         hold on
%         plot(b_hist1(i,:)','r')
%         plot(b_hist2(i,:)','b')       
%         plot(b_hist3(i,:)','g')
%         pause;
%         clf
%         hold off        
%         if(kstest2(b_hist1(i,:), b_hist2(i,:)) == 0)            
%             fprintf('Band %d passed.\n', i);
%         else            
%             fprintf('Band %d failed.\n', i);            
%         end               
    end
    
    
    
    
    figure(f_n),
    hold on
    plot(v1,strcat('r',plottype))
    plot(v2,strcat('g',plottype))
    plot(v3,strcat('b',plottype))
    hold off

end