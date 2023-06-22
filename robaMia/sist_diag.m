function [x1,d] = sist_diag(D,b)
    d = diag(D);
    if det(D) < 1e-10
        error("Error: Il sistema non ammette soluzioni, Determinante nullo");
    else
        x1 = b./d;
    end