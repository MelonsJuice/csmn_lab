clear;
clc;

A = rand(10);               % matrice quadrata 10x10
issymmetric(A)              % verifica che la matrice sia simmetrica

                            % ci serve una matrice simmetrica
A = A'*A;                   % A ora è una matrice simmetrica (Atrasp * A)
issymmetric(A)              % ritorna "logical 1" (true)

lambda = eig(A)             % vettore colonna autovalori di A (ordinati)
[V,D] = eig(A)              % V matrice diagonale con gli autovalori
                            % D matrice con gli autovettori incolonnati

norm(A-V*D*V', "inf")       % norma infinita di A - fattorizzazione spettrale
norm(A,2)                   % norma 2 di A (senza parametri, fa in automatico la 2)
norm(A,1)                   % norma 1 di A

                            % stessa roba con matrice non simmetrica
B = rand(5)
lambdaB = eig(B)            % vettore colonna autovalori di B (numeri complessi)
                            % (-> o spettro matrice)
modulesB = abs(lambdaB)     % moduli dei autovalori lambdaB 
rho = max(modulesB)         % massimo dei moduli (raggio spettrale)

                            % la norma 2 è uguale al raggio spettrale
rhoA = max(abs(lambda))
norm(A)

                            % funzionamento max e min (vettore)
x = rand(7,1)
max(x)                      % elemento massimo di x
[mx,imx] = max(x)           % mx = elemento massimo, imx = indice elemento massimo
                            % stessa cosa per min

                            % funzionamento max e min (matrice)
max(B)                      % elemento massimo di ogni colonna
[mxB,imxB] = max(B)         % stessa roba del vettore, ma per ogni colonna

[mmxb, immxb] = max(mxB)    % elemento massimo della matrice + indice
    
max(B')'                    % massimo elemento per ogni riga

                            % matrici viste
C = rand(3)+i*rand(3)       % matrice complessa (deve esssrlo per il test dopo)
ishermitian(C)              % verifica se la matrice è hermitiana
                            % creazione matrice hermitiana (roba teorica che non ho capito)
C = rand(3)-i*rand(3)       
C = C.'
E = C'*C
ishermitian(E)              % ora torna "logical 1" (true)
lambdaE = eig(E)            % autovalori di E (autovalori reali perché la matrice è hermitiana)
                            % autovettori stessa roba vista prima

                            % matrice ortogonale (M * Mtrasp = identità)
Q = orth(B)                 % ortogonalizza B (metodo Gram-Schmidt)
forseI = Q*Q'               % dovrebbe restituire la matrice identità
norm(forseI - eye(5),"inf") % "errore" di precisione (molto piccolo, quindi accettabile)
                            % si usa la norma in quanto è più precisa nei
                            % controlli (se c'è un solo valore errato, il
                            % risultato si sminchia)
det(Q)                      % dovrebbe tornare 1 (yes)
x = randn(5,1)
                            % norm_X e normQx combaciano (proprietà)
norm_x = norm(x,2)
normQx = norm(Q*x,2)

U = triu(B)                 % matrice triangolare superiore
L = tril(B)                 % matrice triangolare inferiore
L = tril(B,0)               % non cambia nulla
L = tril(B,1)               % prende anche n diagonali in più (questo caso 1)
L = tril(B,-1)              % prende una diagonale in meno (questo caso 1)
istriu(U)                   % verifica se la matrice è triangolare superiore
istril(L)                   % verifica se la matrice è triangolare inferiore
                            % roba stupida di mathlab
U(5,1) = 1e-16              % settato un valore a un numero molto vicino allo 0
istriu(U)                   % istriu ritorna "logical 0" (false)

diag(B)                     % crea un vettore con gli elementi della diagonale 
                            % (se il parametro è una matrice)
diag(ans)                   % crea una matrice diagonale (se il parametro è un vettore)
D = diag(diag(B))           % crea una matrice diagonale
isdiag(D)                   % verifica se la matrice è diagonale (stessa roba di istriu e istril sullo 0)