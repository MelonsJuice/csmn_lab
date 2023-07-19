function [P,L,U] = gauss_palu(A,n)
    P = eye(n);
    L = eye(n);
    U = A;
    
    for i = 1:n
        % scambio righe (matrice U e P)
        [emax, imax] = max(abs(U(i:end,i)));
        
        offset = i - 1;
        tmp = U(i,:);
        U(i,:) = U(imax + offset,:);
        U(imax + offset,:) = tmp;

        tmp = P(i,:);
        P(i,:) = P(imax + offset,:);
        P(imax + offset,:) = tmp;
        
        if i > 1
            tmp = L(i,1:i-1);
            L(i,1:i-1) = L(imax + offset,1:i-1);
            L(imax + offset,1:i-1) = tmp;
        end

        for j = i+1:n
            % calcolo moltiplicatori
            L(j,i) = U(j,i) / U(i,i);
            % calcolor riga U
            U(j,i:end) = U(j,i:end) - (L(j,i) * U(i,i:end));
        end
    end