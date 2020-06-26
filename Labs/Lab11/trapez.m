function arie = trapez (x,y)
 n = length(x);
 a = x(1);
 b = x(n);
 h = (b - a)/n;
 suma = 0;
 for i = 1:(n-1)
   suma = suma + y(i);
 endfor
 arie = h/2 * ( y(1) + y(n) + 2* suma );
endfunction