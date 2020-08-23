function [newX] = polyMix2Var(X,P,col1,col2)
    %POLYMIX Summary of this function goes here
    %   Detailed explanation goes here
    newX = X;
    for n = 1:(P-1)
       newX = [newX, X(:,col1).^n .* X(:,col2).^(P-n)];
    end
end

