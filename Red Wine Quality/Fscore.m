function [Fscore, P, R] = Fscore(X,y,theta, threshold)
    %FSCORE Summary of this function goes here
    % Greater than threshold is positive 
    % 
    predicted = X * theta;
    truePositive = sum((predicted)>threshold & y==1);
    falsePositive = sum((predicted)>threshold & y==0);
    falseNegative = sum((predicted)<threshold & y==1);
    
    R = truePositive/(truePositive + falseNegative);
    P = truePositive/(truePositive + falsePositive);
    Fscore = 2* P * R / (P+R);
end

