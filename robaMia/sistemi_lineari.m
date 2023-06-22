

clear;
clc;

%                     % analisi all'indietro (quella avanti me la sono persa)
% A = rand(6)
% x = ones(6,1)       % soluzione imposta
% b = A*x
% 
% x1 = A\b            % soluzione calcolata
% norm(x-x1,"inf")    % errore 2 soluzioni
% 
% cond(A,2)           % condizionamento (ideale sarebbe 1)
%                     
%                     % con matrici più grandi
% A = rand(100);
% x = ones(100,1);
% b = A*x;
% x1 = A\b;
% norm(x-x1,"inf")    % l'errore è piu grande
% cond(A,2)           % anche il condizionamento
% cond(A,1)
% cond(A,"inf")
% norm(A*x1-b,"inf")  % analisi in avanti

%--------------------------------------------------------------------------

                    % risoluzione sistema diagonale
n = 100;
o = randi([1,10],1);
a = randi([1,10],1);
A = o+a*randn(n);
d = diag(A);
D = diag(d);        % matrice diagonale (da A)
x = ones(n,1);      % soluzione imposta
b = D*x;            % vettore termini noti
% 
% if det(D) < 1e-10
%     error("Error: Il sistema non ammette soluzioni, Determinante nullo");
% else 
% %     x1 = zeros(n,1);% crea un vettore di 0 (init ans)
% %     for i = 1:n
% %         x1(i) = b(i)/D(i,i);
% %     end
%     x1 = b./d;      % ""ottimizzato""
% end
% 
% norm(x-x1,"inf")

%--------------------------------------------------------------------------

[x1,d] = sist_diag(D,b) % teoricamente i nomi delle variabili devono essere
                        % gli stessi... ma in pratica si può non fare
norm(x-x1,"inf")

%--------------------------------------------------------------------------

% A = rand(100);
% x = ones(100,1);
% b = A*x;
% 
% x1 = A\b;
% norm(x-x1,"inf");
