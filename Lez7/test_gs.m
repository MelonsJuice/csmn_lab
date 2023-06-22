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

[xgs,k] = gs(A,b,x0,tau,kmax);
err = norm(xgs-x)/norm(x); 