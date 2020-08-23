function [theta] = trainLogisticReg(X, y, lambda, itr)
    %TRAINLOGISTICREG Summary of this function goes here
    %   Detailed explanation goes here
    % Initialize Theta
    initial_theta = zeros(size(X, 2), 1); 

    % Create "short hand" for the cost function to be minimized
    costFunction = @(t) CostFunction(X, y, t, lambda);

    % Now, costFunction is a function that takes in only one argument
    options = optimset('MaxIter', itr, 'GradObj', 'on');

    % Minimize using fmincg
    theta = fmincg(costFunction, initial_theta, options);
end

