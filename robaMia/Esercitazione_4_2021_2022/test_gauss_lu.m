clear;
clc;

for n = 100:100:1000
    A = rand(n);
    x = ones(n,1);
    b = A*x;
    
    [L,U] = gauss_lu(A,n);
    
    y = L\b;
    x1 = U\y;
    
    pr = norm(x-x1,"inf");
    c1 = cond(A,1);
    c2 = cond(A,2);
    ci = cond(A,"inf");
    
    fprintf("[%4d] error: %e\n       cond: %f, %f, %f\n", n, pr, c1, c2, ci);
end