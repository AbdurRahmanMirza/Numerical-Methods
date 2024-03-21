function [U,x] = gausselimn(A,b)
%{
Gauss-Elimination Method
Inputs:
    A = n-by-n coefficient matrix
    b = n-by-1 source matrix
Outputs:
    U = n-by-n upper triangular matrix  
    x = n-by-1 martix, soltion of Ax = b
%}

 n = length(b);
 x = zeros(n,1);
 Aug = [A b];

 for j = 1:n+1
     for i = j+1:n
         m = Aug(i,j)/Aug(j,j);
         Aug(i,:) = Aug(i,:) - m*Aug(j,:);
     end
 end
 
 x(n) = Aug(n,n+1)/Aug(n,n);
 for k = n-1:-1:1
     x(k) = Aug(k,n+1)- Aug(k,k+1:n)*x(k+1:n)/Aug(k,k);
 end
 U = Aug(:,1:n);
end