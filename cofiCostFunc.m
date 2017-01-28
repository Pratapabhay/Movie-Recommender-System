function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)


X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);

            
% You need to return the following values correctly
J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

s=0;
[a b] =  size(R);

for i = 1:a
	for j = 1:b
		if(R(i,j)==1)
			s = s + (Theta(j,:) * X(i,:)' - Y(i,j)) .^ 2; 
		endif
	end
end

J = s/2;

[a b] = size(X);

for i = 1:a
	idx = find(R(i,:)==1);

	Thetatemp = Theta(idx,i);
	Ytemp = Y(i, idx);
	size(X(i,:))
	size(Thetatemp)
	%X_grad(i, :) = ((X(i, :) * Thetatemp') − Y_temp ) * Thetatemp;
end


grad = [X_grad(:); Theta_grad(:)];

end
