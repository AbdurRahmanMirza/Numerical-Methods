function I = trapuneq(x,y)
%{
Unequally Spaced Trapezoidal Rule Quadrature
Input:
   x = vector of independent variables
   y = vector of dependent variables
Output:
   I = integral estimate
%}
if nargin < 2, error('At least 2 input arguments required.'), end
if any(diff(x) < 0), error('x is not monotonically ascending.'), end
n = length(x);
if n ~= length(y), error('x and y must be of same length.'), end
sum = 0;
for k = 1:n-1
    sum = sum + 1/2*(x(k+l)-x(k))*(y(k)+y(k+l));
end
I = sum;