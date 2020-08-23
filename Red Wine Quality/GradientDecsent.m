function [theta,J] = GradientDecsent(X, y, theta, alpha, iterations, lambda)
    %GRADIENTDECSENT Summary of this function goes here
    %   Detailed explanation goes here
    J = zeros(iterations,1);
    for i = 1:iterations
        [Jati,grad] = CostFunction(X,y,theta,lambda);
        J(i, 1) = Jati;
        theta = theta - alpha * grad;
    end
end

