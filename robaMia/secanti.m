function [xc,k] = secanti(fun,x0,x1,tol,kmax)
    xprev0 = x0;
    xprev1 = x1;
    for k = 1:kmax
        xc = (xprev0*fun(xprev1)-xprev1*fun(xprev0))/(fun(xprev1)-fun(xprev0));
        if abs(xc-xprev1) < abs(xprev1)*tol || abs(fun(xc)) < tol, return; end
        xprev0 = xprev1;
        xprev1 = xc;
    end