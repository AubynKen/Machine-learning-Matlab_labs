function p = predict(Theta1, Theta2, X)

A1 = X'
A2 = sigmoid([ones(1, size(A1, 2)); A1] * Theta1);
A3 = sigmoid([ones(1, size(A2, 2)); A2] * Theta2);

[~, p] = max(A3, [], 1);
p = p';


%{
A1 = X';
A1 = [ones(1, size(A1, 2)); A1];

Z2 = Theta1 * A1;
A2 = sigmoid(Z2);
A2 = [ones(1, size(A2, 2)); A2];

Z3 = Theta2 * A2;
A3 = sigmoid(Z3);

[~, p] = max(A3, [], 1);
p = p';
%}

%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)
%{
% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

X = [zeros(m, 1) X];

Z2 = Theta1 * X';
A2 = sigmoid(Z2);

A2 = [zeros(1, m); A2];

Z3 = Theta2 * A2;
A3 = sigmoid(Z3);

[~, p] = max(A3, [], 1);
p = p';
%}
% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%









% =========================================================================


end
