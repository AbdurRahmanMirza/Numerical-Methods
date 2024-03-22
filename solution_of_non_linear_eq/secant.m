function xr = secant(func,xl,xu,n,delta)
%{
Secant Method
Inputs:
    func = function handle
    xl, xu = the left and right end points
    n = no. of iterations (default = 25)
    delta = tolerence for zero (default is 0.0001)
Outputs:
    xr = approximation to zero of 'func'
%}

 if nargin < 3, error("At least 3 input argumetns are required."), end
 if nargin < 4 || isempty(n), n = 25; end
 if nargin < 5 || isempty(delta), delta = 0.0001; end

 for i = 1:n
     xr = xu-func(xu)*(xu-xl)/(func(xu)-func(xl));
     fprintf("x2(%d) = %.4f\n",i,xr);
     % stopping iterations if 'tol' is reached  
     if abs(xr-xu) < delta, break, end
     xl = xu;
     xu = xr;
 end
end