function [X] = AddMultiplePolyFeatures(X,P,polyPos)
    %ADDMULTIPLEPOLYFEATURES Summary of this function goes here
    %   Detailed explanation goes here
   

    comb = nchoosek(polyPos,2);

    for i = 2:P
        for k = 1:size(polyPos,2)
            X = AddPolynomialFeatures(X,polyPos(1,k),i);
        end
        
        for j = 1:size(comb,1)
            X = polyMix2Var(X,i,comb(j,1),comb(j,2));
        end
        
    end
end

