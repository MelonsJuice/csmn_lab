fun1 = @(x) 1/(1+25*x^2);
fun2 = @(x) sin(2*pi*x);

xl = linspace(0,3,4);
y = zeros(length(xl),1);

for i = 1:4, y(i)=fun2(xl(i)); end

yy = canint(xl,y,[1;2.5;3;4]);