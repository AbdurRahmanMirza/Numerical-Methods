function y = fixedpoint(g,p0,tol,max1)
for k = 1:max1
    p = g(p0);
    abserr = abs(p-p0);
    relerr = abserr/( abs(p)+eps );
% eps is a MATLAB defined constant for machine epsilon, to avoid
% division by 0
    if (abserr<tol) && (relerr<tol)
        break 
    end
    p0 = p;
end
if (k == max1)
    disp("The algorithm did not converge")
end
y = p;