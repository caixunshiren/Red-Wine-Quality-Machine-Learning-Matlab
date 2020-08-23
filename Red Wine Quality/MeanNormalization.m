function [X_norm, mu, sigma] = MeanNormalization(X)
    %MEANNORMALIZATION Summary of this function goes here
    %   Detailed explanation goes here
    X_norm = X;
    
    mu = mean(X);
    sigma = std(X);
    temp = size(X);

    for i = 1:temp(1)
        X_norm(i, :) =  (X_norm(i, :) - mu) ./ sigma;
    end
    
end

