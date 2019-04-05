function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

sim = 0;

a = -sum((x1 - x2).^2);
b = 2 * sigma^2;
sim = exp(a/b);
    
end
%{
gaussianKernel([1 2 3], [2 4 6], 3)

% result
ans =  0.45943
}%