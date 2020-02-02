function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
% 1*2 matrix
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

%disp(X_norm)
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

len = size(X, 2);

for i = 1:len
    
    average = mean(X(:,i)); % calc the mean of column i
    standard_dev = std(X(:,i)); % calc the std of column i
    X_norm(:,i) = (X_norm(:,i) - average)/standard_dev; 
    mu(i) = average; % store the mean and std
    sigma(i) = standard_dev;
    
end

% ============================================================

% 2nd dimension is num of columns


end
