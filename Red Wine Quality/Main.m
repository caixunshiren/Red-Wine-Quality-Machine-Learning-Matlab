tic;

data = dlmread('winequality-red.csv',',',1,0);
%randomize rows first
%data = data(randperm(size(data, 1)), :);

X = data(:,1:(end-1));
y = data(:,end);
y = (y >= 7);

% -------- feature engineering here ------ 

X = AddMultiplePolyFeatures(X,5,[1 2 3 4 5 6 7 8 9 10 11]);


[X mu sigma] = MeanNormalization(X);
%PCAvisualization(X,y,2);
X = [ones(size(X,1),1), X];
% -------- feature engineering ends ------

%spliting into two sets
Xtest = X(1201:1599, :);
ytest = y(1201:1599, :);

X = X(1:1200, :);
y = y(1:1200, :);

%gradient descent
%theta = zeros(size(X,2),1);
%iterations = 200000;
%alpha = 0.3;
%lambda = 0;
%[theta, J] = GradientDecsent(X,y,theta,alpha,iterations,lambda);
theta=trainLogisticReg(X,y,0, 200000);


%hold on

%plot cost function vs iterations
%plot(J);

%theta

%hold off

errorTrain =(sum((X*theta)>0.1 & y==1)+sum((X*theta)<0.1 & y==0) )/size(X,1);
errorTrain

errorTest =(sum((Xtest*theta)>0.1 & ytest==1)+sum((Xtest*theta)<0.1 & ytest==0) )/size(Xtest,1);
errorTest

threshold = BestThreshold(X, y, theta);
threshold
[fs, P, R] = Fscore(X, y, theta, threshold);
fs
P
R

thresholdtest = BestThreshold(Xtest, ytest, theta);
thresholdtest
[fstest, Ptest, Rtest] = Fscore(Xtest, ytest, theta, thresholdtest);
fstest
Ptest
Rtest

toc;

