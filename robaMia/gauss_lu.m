function [L,U] = gauss_lu(A,n)
    L = eye(n);
    U = A;
    
    for i = 1:n
        for j = i+1:n
            % calcolo moltiplicatori
            L(j,i) = U(j,i) / U(i,i);
            % calcolor riga U
            U(j,i:end) = U(j,i:end) - (L(j,i) * U(i,i:end));
        end
    end