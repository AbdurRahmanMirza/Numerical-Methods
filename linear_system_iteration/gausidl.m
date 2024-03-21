function X = gausidl(A,b,P,tol,max_itr)
%{
Gauss-Sidel Iteration
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

 for i = 1:max_itr
     for j=1:n
         if j == 1
             X(1) = (B(1)-A(1,2:n)*P(2:N))/A(1,1);
         elseif j == n
             X(n) = (b(n)-A(N,1:N-1)*X(1:N-1)')/A(n,n);
         else
             X(j) = (b(j)-A(j:1:j-1)*X(1:j-1)'-A(j,j+1,n)*P(j+1:n))/A(j,j);
         end
     end
     err = abs(norm(X'-P));
     rel_err = err/(norm(X)+eps);
     P = X';
     if (err < tol) || (rel_err < tol), break, end
 end
end