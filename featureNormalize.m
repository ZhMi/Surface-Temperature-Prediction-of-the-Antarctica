function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2)); % size(X,2) X矩阵的列
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

mu = mean(X,1);
% average or mean value of array
% example a[1 2 4 ;6 7 9]
% mean(a,1)
% [3,5  4.5  6.5]

sigma = std(X); 
% std(x) 算出x的标准偏差。 x可以是一行的matrix或者一个多行matrix矩阵
i = 1;  
le = size(X, 2);  
while i <= le,  
    X_norm(:,i) = (X(:,i) - mu(1,i))/sigma(1,i);  
    i = i + 1;  
end;  







% ============================================================

end
