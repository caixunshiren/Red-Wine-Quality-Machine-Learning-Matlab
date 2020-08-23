function [newX] = AddPolynomialFeatures(X, ColToBeAddFeature, degree)
    %ADDPOLYNOMIALFEATURES Summary of this function goes here
    %   ColToBeAddFeature = the column to be added polynomial feature
    %   add the polynomial to [degree] degree
    
    newX = X;
    
    Col = X(:, ColToBeAddFeature);
    
    for i = 2:degree
        newX = [newX, Col.^i];
    end
end

