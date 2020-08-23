# Red-Wine-Quality-Machine-Learning-Matlab
Logistic regression using matlab on dataset of red wine quality. Predicts "good wine" if score >= 7.

Dataset from https://www.kaggle.com/uciml/red-wine-quality-cortez-et-al-2009

The project contains algorithm that determines best polynomial degree as well as regularization factors. Due to the limited number of training data (~1000), the best 
degree polynomial and regularization factor end up being 1 and 0. 

To use this algorithm:
1) run FindBestPolynomialAndLambda.m to find the best polynomial and lambda (this takes a while to run and I found them to be 1 and 0 respectively) and the result is saved
in BestLambdaAndDegreePolynomial.mat
2) run Main.m to train training set and the result while be evaluated using test set and f-score


Despite the result, this project contains helpful files that may be beneficial for future ml problem. They are: 

MeanNormalization.m
PCAvisualization.m
SelectPolynomialDegree.m, AddMultiplePolyFeatures.m, and polyMix2Var.m
