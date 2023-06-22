clear;
clc;

x = [-pi;-pi/2;0;pi/2;pi];
y = sin(x);

plot(x,y)

x = linspace(-pi,pi,50)';           % intervallo di 50 valori tra -pi e pi
y = sin(x);

plot(x,y)

plot(x,y,'r-o')                     % aggiungi stili (red tratteggiato mark(o))
                                    % altre info su help plot (ovviamente)

y2 = cos(x);
plot(x,y,x,y2)                      % metodo 1
plot(x,y,'ro',x,y2,'b*')            % metodo 2
legend('y = sin(x)','y = cos(x)')   
plot(x,[y,y2])                      % metodo 4
Y = [y,y2];
plot(x,Y)                           % metodo 5

y3 = tan(x);
Y = [y,y2,y3];
plot(x,Y)
title('funzioni trigonometriche')
xlabel('x')
ylabel('y')
