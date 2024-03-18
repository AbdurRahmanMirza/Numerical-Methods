function I = Simpson3by8(func,a,b,n)
%{
Simpson's 1/3 Rule
Input:
    func = handle of function to be integrated
    a = lower bound
    b = upper bound
    n = number of intervals, defaults to 100, must be even
Output:
    I = result of integration
%} 

if nargin < 3, error('insufficient inputs'); end
if a > b, error('b must be greater than a'); end
if nargin < 4, n = 100; end
if mod(n,2) == 1, error('n must be even'); end

x = zeros(1,n-1); y = zeros(1,n-1);
sum_odd = 0; sum_even = 0;
h = (b-a)/n; 

for i = 1:1:n-1
    x(i) =  a + i*h;
    y(i) = func(x(i));
    if mod(i,2) == 1
        sum_odd = sum_odd + y(i);
    else
        sum_even = sum_even + y(i);
    end 
end
I = (3*h/8)*(func(a)+func(b)+4*sum_odd+2*sum_even);