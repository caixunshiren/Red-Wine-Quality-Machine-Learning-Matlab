function [] = PCAvisualization(X,y,dim)
    %u = pca(X);
    
    sigma = 1/size(X,1) * (X'*X);
    [u,s,v] = svd(sigma);
    
    Z = X * u(:,[1,2,3]);
    plotData(Z,y,dim);
end

