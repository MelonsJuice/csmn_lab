clear;
clc;

mat1 = [1 2 3 ; 4 5 6 ; 6 7 8]  % creazione matrice
mat2 = [1 0 9 ; 8 7 6 ; 4 2 3]
vet1 = [1 2 3]                  % vettore riga
vet2 = [1 ; 2 ; 3]              % vettore colonna
vet3 = [1 2 3]'                 % vettore colonna

eye(3)                          % matrice identità

ones(3)                         % matrice di soli uno

num = 12;
num * ones(3)                   % matrice di soli num

rand(3,3)                       % matrice di valori casuali REALI 
                                % (0-1 distribuzione uniforme)

randi([2,100], 3,3)             % matrice di valori casuali INTERI 
                                % (2-100 distribuzione uniforme)
    % 100 = [0,100]

randn(4,5)                      % matrice di valori casuali REALI 
                                % (0-1 distribuzione normale)

mat1 + mat2                     % somma matrici
mat1 * mat2                     % prodotto matrici
mat1 .* mat2                    % prodotto [a]ij * [b]ij
mat1 .^ 2                       % elevamento [a]ij ^ exp
mat1 / mat2                     % divisione matrici = B * inv(A)
mat1 \ mat2                     % divisione matrici = inv(a) * B

mat1(1, 2)                      % estrazione valore riga 1 colonna 2
mat1(2,1:3)                     % estrazione valori riga 2 colonne 1-3
mat1(2,:)                       % estrazione riga 2
mat1(2,1:end)                   % estrazione riga 2

mat2(1:2,3)                     % estrazione colonna 3 (righe 1-2)
mat2(:,1)                       % estrazione colonna 1
                                % stessi modus operandi di quelli per le righe

mat1(1:2,2:3)                   % combinazioni varie
mat1([1,3],2:3)                 % estrazione righe 1,3 (colonne 2-3)

[c,j] = find(mat2 > 3)          % restituisce gli indici (la matrice in 
                                % memoria è un vettore gigante ottenuto
                                % concatenando le colonne) 
                                % degli elementi in mat2 maggiori di 3

[c,j]                           % "stampa" vettori (colonna) c,j affiancati
[c;j]                           % "stampa" vettori (colonna) c,j uno sotto l'altro
                
s = mat2 > 3                    % restituisce una matrice di 0,1 (booleani)
                                % 0: [a]ij not > 3, 1: [a]ij > 3

inv(mat1)                       % inversa matrice
mat1^(-1)                       % inversa matrice
mat1\eye(3)                     % inversa matrice (più veloce/ottimizzato)

det(mat2)                       % determinante matrice
rank(mat2)                      % rango matrice

norm(vet3,1)                    % norma 1 vettore
norm(vet3,2)                    % norma 2 vettore
norm(vet2)                      % sempre norma 2