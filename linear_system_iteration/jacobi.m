function X = jacobi(A,b,P,tol,max_itr)
%{
Jacobi Iteration
Input:
      A is n-by-n non-singualr matrix
      b is column vector
      P is column vector of initail guess
      tol is the tolarance of 'P'
      max_itr is the maximum number of iterations
Output:
      X is column vector, the jacobi approximation
      to the solution of AX = b 
%}

 n = length(b);
 for  i = 1:max_itr
     for j = 1:n
         X(j) = (b(j)-A(j,[1:j-1,j+1:n])*P([1:j-1,j+1:n]))/A(j,j);
     end
     err = abs(norm(X'-P));
     rel_err = err/(norm(X)+eps);
     P = X';
     if (err < tol) || (rel_err < tol), break, end
 end
end