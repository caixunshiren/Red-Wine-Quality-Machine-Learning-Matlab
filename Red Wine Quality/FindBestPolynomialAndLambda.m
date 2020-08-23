tic;
data = dlmread('winequality-red.csv',',',1,0);
%randomize rows first
data = data(randperm(size(data, 1)), :);
X = data(:,1:(end-1));
y = data(:,end);
y = (y >= 7);

[P, lambda, GTrain, GTest] = SelectPolynomialDegree(X, y, 10);
P
lambda

%GTrain(:,1);
%GTest(:,1);

save('BestLambdaAndDegreePolynomial.mat', 'P', 'lambda', 'X', 'y', 'GTrain', 'GTest');

for i = 1:7

    figure

    hold on

    plot(GTrain(:,i));
    plot(GTest(:,i),'b--o');

    hold off

end
toc;