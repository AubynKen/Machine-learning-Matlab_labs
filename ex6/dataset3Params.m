function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% Values to be tested on for C and sigma
val_arr = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];

% You need to return the following variables correctly.

C = 0.01;
sigma = 0.01;
error_min = 1.00;

for c = val_arr
    for s = val_arr
        model = svmTrain(X, y, c, @(x1, x2)gaussianKernel(x1, x2, s));
        predictions = svmPredict(model, Xval);
        error_rate = mean(double(predictions ~= yval));
        if error_rate < error_min
            C = c;
            sigma = s;
            error_min = error_rate;
        end
    end
end

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end
