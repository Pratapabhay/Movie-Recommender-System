function [mu sigma2] = estimateGaussian(X)

[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);


for i=1:n
mu(i,1) = 1/m * sum(X(:,i));

sigma2(i) =  sum(((X(:,i) - mu(i,1)) .^ 2)) ./ m;
end
% =============================================================


end
