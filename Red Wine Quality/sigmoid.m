function [newZ] = sigmoid(Z)
    %SIGMOID Summary of this function goes here
    %   Detailed explanation goes here
    newZ = 1./(1+exp(-Z));
end

