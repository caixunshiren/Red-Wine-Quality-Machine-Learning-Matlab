function [T] = BestThreshold(X,y,theta)
    %BESTTHRESHOLD Summary of this function goes here
    %   Detailed explanation goes here
    T = 0.5;
    fs = 0;
    for i = 2:19
        temptT = i * 0.05;
        temptfs = Fscore(X, y, theta, temptT);
        if (temptfs > fs)
           T = temptT; 
           fs = temptfs;
        end
    end
end

