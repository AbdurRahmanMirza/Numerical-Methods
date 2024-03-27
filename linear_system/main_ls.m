clc
clear all
format short

addpath linear_system

A = [6 15 55; 15 55 225; 55 225 979];
b = [76;295;1259];

disp("Cholesky's Method")
[l,u,y,x] = cholesky(A,b)

A = [10 -1 2 0; -1 11 -1 3; 2 -1 10 -1; 0 3 -1 8];
b = [6 25 -11 15]';

disp("Crout's Method")
[l,u,y,x] = crout(A,b)


disp("Doolittle's Method")
[l,u,y,x] = doolittle(A,b)

A = randi([1,10],[5,5]);
b = randi([1,10],[5,1]);

disp("Cramer's Rule")
x = cramer(A,b)

disp("Gauss Elimination")
[u,x] = gausselimn(A,b)

disp("Gauss-Jordan Method")
[Ab,x] = gaussjordan(A,b)