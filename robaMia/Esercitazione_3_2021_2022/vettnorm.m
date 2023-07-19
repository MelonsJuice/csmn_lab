clear;
clc;

n = input("n: ");

R = rand(n);
x = diag(R);
D = diag(x);
U = triu(R);
L = tril(R);

isdiag(D)
istriu(U)
istril(L)