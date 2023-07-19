function [x,k] = jacobi(A,b,x0,tau,kmax)
    if (nargin < 3), x0 = zeros(size(b)); end    
    if (nargin < 4), tau = 1e-5; end
    if (nargin < 5), kmax = 100; end

    D = diag(diag(A));
    E = -tril(A,-1);
    F = -triu(A,1);
    
    k = 0;
    B = D \ (E+F);
    f = D \ b;
    flag = 1;
    xnew = x0;

    while flag
        x0 = xnew;
        xnew = B*x0 + f;
        k = k+1;
        flag = norm(xnew - x0) > tau*norm(x0) && k < kmax; 
    end

    x = xnew;