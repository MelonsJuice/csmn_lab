clear;
clc;

x = input("x: ");
if x < 0 || x > 50
    disp("Error: 'x' must be in range [0,50]");
else
    disp(sqrt(x));
end
