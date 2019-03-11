function feat = feature_extraction(img)
    % Output should be a fixed length vector [1*dimension] for a single image. 
    % Please do NOT change the interface.
    R = img(:,:,1);
    G = img(:,:,2);
    B = img(:,:,3);
    
    R = [mean(mean(R(1:floor(end/2),:))) mean(mean(R(floor(end/2)+1:end,:)))];
    G = [mean(mean(G(1:floor(end/2),:))) mean(mean(G(floor(end/2)+1:end,:)))];
    B = [mean(mean(B(1:floor(end/2),:))) mean(mean(B(floor(end/2)+1:end,:)))];
    
    TR = graythresh(R);
    TG = graythresh(G);
    TB = graythresh(B);

    meanColors = [R G B TR TG TB]/255;
   
end
