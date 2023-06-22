function yy = lagrint(x,y,xx)
    x = x(:); % "cast" a vettore colonna
    y = y(:); % "cast" a vettore colonna

    n = length(x);
    yy = zeros(length(x),1);

    % calcolo dei denominatori
    den = zeros(n,1);
    for i = 1:n
        den(i) = prod(x(i) - x([1:i-1,i+1:end]));
    end
    
    num = zeros(n,1);
    L = zeros(n,1);
    for i = 1:length(xx)
        % calcolo numeratori
        for j = 1:n
            num(j) = prod(xx(i) - x([1:j-1,j+1:end]));
        end
        
        % calcolo L
        L = num./den;

        yy(i) = y'*L;
    end
    
    plot(x,y,'o-r',xx,yy,'o-b');
    
