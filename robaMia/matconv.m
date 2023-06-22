function [A] = matconv(n)
    A = rand(n);
    A = A - diag(diag(A));
    
    s = sum(abs(A'));
    s = s*3;

    A = A + diag(s);
    