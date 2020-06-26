function arie = SimpsonMN (x,y)
 n = length(x);
 a = x(1);
 b = x(n);
 h = (b - a)/n;
 sum1 = 0;
 sum2 = 0;
 
 for i = 2:(n/2)
   sum1 = sum1 + y(2*i -1);
 endfor
 sum1 = 4*sum1;
 
 for i = 1:(n/2 - 1)
  sum2 = sum2 + y(2*i);
 endfor
sum2 = 2*sum2;

 arie = h/3 * ( y(1) + y(n) + sum1 + sum2);
endfunction
