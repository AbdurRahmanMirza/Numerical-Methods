function x = cramer(A,b)
%{
Cramer's Rule
Input: 
      A = n-by-n coefficient matrix
      b = n-by-1 source matrix
Output:
      x = n-by-1 matrix, solution of Ax = b
%}

 n = length(b);
 x = zeros(n,1);
 Aold = A; d = det(A);
 if d ~= 0
     for i = 1:n
         A(:,i) = b;
         x(i) = det(A)/d;
         A = Aold;
     end
 else
<<<<<<< HEAD
     error("'A' is singular matrix. So, Cramer's rule can't be applied.")
=======
     error("Cramer's rule can't be applied.");
>>>>>>> 88a19df33ac2c3d849faa37d49a5d171caf97989
 end
end
