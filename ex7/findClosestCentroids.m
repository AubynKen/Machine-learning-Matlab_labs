function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% Training set size
m = size(X, 1);

% You need to return the following variables correctly.
idx = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
    function idx_i = closest_centroid_index(x, my_centroids)
       K = size(my_centroids, 1);
       idx_i = -1;
       curr_min_d2 = Inf;
       for k = 1:K
          diff = x - my_centroids(k, :);
          curr_d2 = sum(diff.^2);
          if curr_d2 < curr_min_d2
             idx_i = k;
             curr_min_d2 = curr_d2;
          end
       end
    end

% data: X, centroids

for i = 1:m
    idx(i) = closest_centroid_index(X(i, :), centroids);
end

% =============================================================

end

