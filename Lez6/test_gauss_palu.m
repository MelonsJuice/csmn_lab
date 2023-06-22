n = 10;
A = 10*rand(n);
x = ones(n,1);
b = A*x;
[P,L,U] = gauss_palu(A);
y = L\(P*b);
x1 = U\y;
err = norm(x1-x)/norm(x);
fprintf('\nL''errore che si commette e'': %e',err)