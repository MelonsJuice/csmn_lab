% clear all
clear;
clc;

% program start
x = 1e-1;
for exp = -1 : -1 : -20
    x = 10^exp;
    f1 = (1 - cos(x)) / x^2;
    f2 = 1/2 * (sin(x/2) / (x/2))^2;
end
