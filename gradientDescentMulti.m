function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

	%computeCostMulti
	%J=1/(2*m)*sum((X*theta-y).^2);
	
	%gradientDescent start
	%h=theta(1)+theta(2).*X(:,2);
	%Jtheta=h-y;
    
	%temp1=theta(1)-alpha*(1/m)*sum(Jtheta);
    %temp2=theta(2)-alpha*(1/m)*sum(Jtheta.*X(:,2));
	
	%theta=[temp1 ; temp2]
	%gradientDescent end
	
	h=X*theta;
	temp_theta=zeros(size(theta));
	for ti = 1:size(theta)
		temp_theta(ti)=theta(ti)-alpha*(1/m)*sum((h-y).*X(:,ti));	
	end
	theta=temp_theta;
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
