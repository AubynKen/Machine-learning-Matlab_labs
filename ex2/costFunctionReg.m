function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = length(theta) - 1;
g = arrayfun(@sigmoid, X * theta);
theta_1_to_n = theta(2:n+1);

% You need to return the following variables correctly 
J =- (1/m) * (y' * log(g) + (1-y)' * log(1 - g)) + (lambda/(2*m)) * sum(theta_1_to_n .^ 2);
grad = (lambda/m) * [0;theta_1_to_n] + (1/m) * X' * (g - y);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
