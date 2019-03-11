function predict_label = your_kNN(feat)
    % Output should be a fixed length vector [num of img, 1]. 
    % Please do NOT change the interface.

    predict_label = zeros(size(feat,1),1); %dummy. replace it with your own code
    load('model.mat','feat_train','label_train');
    [D,I] = pdist2(feat_train, feat, 'euclidean', 'Smallest', 5);
    [r,a] = size(feat);
    
    predict_label(i,1) = mode([ceil(I(1,i) / 60), ceil(I(2,i) / 60), ceil(I(3,i) / 60), ceil(I(4,i) / 60), ceil(I(5,i) / 60)]);
end
