function yy = canint(x,y,xx)
    x = x(:); % conversione x in vettore colonna
    y = y(:); % conversione y in vettore colonna
    
    n = length(x);
    yy = zeros(length(x),1);

    % matrice delle x
    xExp = zeros(n);
    for i = 1:n
        xExp(:,i) = x.^(i-1);
    end

    % matrice dei coefficienti
    a = xExp\y;

    for i = 1:length(xx)
        sum = 0;
        for j = 1:n
            sum = sum + a(j) * xx(i)^(j-1);
        end
        yy(i) = sum;
    end
    
    plot(xx,yy,'b-o',x,y,'r-o');