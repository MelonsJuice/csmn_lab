clear;
clc;

a = input("a: ");
b = input("b: ");
c = input("c: ");

% float dei numeri a 4 cifre significative
fl_a = round(a, 4, "significant");
fl_b = round(b, 4, "significant");
fl_c = round(c, 4, "significant");

% calcola a + b - c (no round)
res = a + b - c;

% calcola ((a + b) - c)
fl_a_b = round(fl_a + fl_b, 4, "significant");
fl_res1 = round(fl_a_b - fl_c, 4, "significant");
err1 = abs(fl_res1 - res) / abs(res);

% calcola (a + (b - c))
fl_b_c = round(fl_b - fl_c, 4, "significant");
fl_res2 = round(fl_a + fl_b_c, 4, "significant");
err2 = abs(fl_res2 - res) / abs(res);
