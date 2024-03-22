function xr = fixptit(func,x0,n,delta)
%{
Fixed-Point Iteration
Input:
    func = function handle
    x0 = initial guess to zero of 'func'
    n = number of iterations (default is 25)    
    delta = tolerence for x0 (default is 0.00001)
Output:
    xr = approximation to zero of 'func'
%}

 if nargin < 3, error("At least 3 input argumetns are required."), end
 if nargin < 4 || isempty(n), n = 25; end
 if nargin < 5 || isempty(delta), delta = 0.00001; end
 
 for i = 1:n
     xr = func(x0);
     fprintf("xr(%d) = %.6f\n",i,xr);
     % stopping iterations if 'tol' is reached
     if abs(xr-x0) < delta, break, end
     x0 = xr;
 end
end