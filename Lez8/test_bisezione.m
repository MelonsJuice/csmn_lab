fun = @(x) sin(3.*x) - x.^2 + 2.*x + 3;
fund = @(x) 3.*cos(3.*x) - 2.*x + 2;
a = 3;
b = 4;
x0 = 4;
tau = 1e-7;
kmax = 100;

%[x,k] = bisezione(fun,a,b,tau,kmax);
[x,k] = newton(fun,fund,x0,tau,kmax);