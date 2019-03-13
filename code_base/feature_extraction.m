function feat = feature_extraction(img)
% Output should be a fixed length vector [1*dimension] for a single image. 
% Please do NOT change the interface.

    feat = zeros(1, 6);
    image = rgb2gray(img);
    
    feat(1, 1) = length(detectBRISKFeatures(image));
    feat(1, 2) = length(detectFASTFeatures(image));
    feat(1, 3) = length(detectHarrisFeatures(image));
    feat(1, 4) = length(detectMinEigenFeatures(image));

    sum = 0;
    
    for i = 1:6
        sum = sum + feat(1, i);
    end
    
    for j = 1:6
        feat(1, j) = feat(1, j) / sum;
    end
    
end