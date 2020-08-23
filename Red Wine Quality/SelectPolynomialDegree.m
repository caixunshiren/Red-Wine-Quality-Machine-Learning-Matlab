function [P,L,GraphMatrixTraining,GraphMatrixTesting] = SelectPolynomialDegree(Xinput,yinput,maxDegree)
    %SELECTPOLYNOMIALDEGREE Summary of this function goes here
    %   Detailed explanation goes here
    P = 1;
    L = 0;
    lambdaList = [0.001 0.003 0.01 0.03 0.1 0.3 1]';
    GraphMatrixTraining = zeros(maxDegree,size(lambdaList,1));
    GraphMatrixTesting = zeros(maxDegree,size(lambdaList,1));
    leastError = intmax;
    %lambdaList = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10 30 100]';
    for i=1:maxDegree
        
        for j=1:size(lambdaList,1)
            X = Xinput;
            y = yinput;
            
            if(i>1)
            X = AddMultiplePolyFeatures(X, i, [1 2 3 4 5 6 7 8 9 10 11]);
            end
            
            X = MeanNormalization(X);
            X = [ones(size(X,1),1), X];

            %spliting into two sets
            Xtest = X(1201:1599, :);
            ytest = y(1201:1599, :);

            X = X(1:1200, :);
            y = y(1:1200, :);

            %gradient descent
            lambda = lambdaList(j,1);
            theta=trainLogisticReg(X,y,lambda, 200000);

            %compute total error
            trainingError = CostFunction(X, y,theta,lambda);
            testError =  CostFunction(Xtest, ytest,theta,lambda);
            GraphMatrixTraining(i,j) = trainingError;
            GraphMatrixTesting(i,j) = testError;
            %totalError = trainingError + testError;
            totalError = testError;
            if(totalError<leastError)
                leastError = totalError;
                P = i;
                L = lambdaList(j,1);
            end
        end
    end
end

