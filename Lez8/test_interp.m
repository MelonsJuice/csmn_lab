%x = linspace(-1,1,20)';  %equispaziati
n = 20;
k = (0:n)';
x = cos((2*k+1)./(2*(n+1))*pi);
%y = sin(pi*x);
y = 1./(1+25.*x.^2);
xx = linspace(-1,1,100)';

yy = canint(x,y,xx);

