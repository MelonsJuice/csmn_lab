n = 10;
A = rand(n);
A = A - diag(diag(A));
s = sum(abs(A'));
s = s*3;
A = A + diag(s);

x = ones(n,1);
b = A*x;

x0 = zeros(n,1);
tau = 1e-5;
kmax = 100;

[xj,kj] = jacobi(A,b,x0,tau,kmax);
[xgs,kgs] = gs(A,b,x0,tau,kmax);
err_j = norm(xj-x)/norm(x);
err_gs = norm(xgs-x)/norm(x); 




