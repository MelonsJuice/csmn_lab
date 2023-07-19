clear;
clc;

n = input("n: ");

S = randi([10,20], n);
if ~issymmetric(S)
    S = (S + S') / 2;
end

d = eig(S);

norm(d,1)
norm(d,2)
norm(d,"inf")
