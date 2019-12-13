function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);
theta=(X'*X)^-1*X'*y
% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------

%BRL 8/8/16 - Implementation of Normal Equation using vector
% and matrix multiplication. Possible because column of 1's 
% inserted in first position of data (X) to allow for 
% intercept value (theta(0))
theta=(X'*X)^-1*X'*y

% -------------------------------------------------------------


% ============================================================

end
