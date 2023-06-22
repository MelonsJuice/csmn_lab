function [xc,k] = corde(fun,m,x0,tol,kmax)
    xprev = x0;
    for k = 1:kmax
        xc = xprev - (fun(xprev) / m);
        if abs(xc-xprev) < abs(xprev)*tol || abs(fun(xc)) < tol, return; end
        xprev = xc;
    end