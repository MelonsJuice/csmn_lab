clear;
clc;

% metodi iterativi

n    = 10;
A    = matconv(n);    % crea una matrice che converge
x    = ones(n,1);
x0   = zeros(n,1);
b    = A*x;
% tau  = 1e-3;
% kmax = 10;

[xj,kj] = jacobi(A,b)
errj = norm(xj - x)/norm(x)

[xg,kg] = gauss(A,b)
errg = norm(xg - x)/norm(x)