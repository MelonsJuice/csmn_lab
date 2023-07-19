clear;
clc;

t = 3;

a = input("a: ");
b = input("b: ");
c = input("c: ");

d1 = (a + b) + c;
d2 = a + (b + c);

fl_a = round(a, t, "significant");
fl_b = round(b, t, "significant");
fl_c = round(c, t, "significant");

fl_ab = round(fl_a + fl_b, t, "significant");
fl_bc = round(fl_b + fl_c, t, "significant");

fl_d1 = round(fl_ab + fl_c, t, "significant");
fl_d2 = round(fl_a + fl_bc, t, "significant");

p1 = abs(d1 - fl_d1) / abs(d1);
p2 = abs(d2 - fl_d2) / abs(d2);

fprintf("\nd1: %f\nfl_d1: %f\n\nd2: %f\nfl_d2: %f\n\n", d1, fl_d1, d2, fl_d2);
fprintf("p1: %f\np2: %f\n", p1, p2);