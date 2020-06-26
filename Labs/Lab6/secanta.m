function [x ,steps] = secanta (p,x0, x1 , tol)
  steps = 0;
  while(1)
  x = x1 - polyval(p, x1)*(x1 - x0)/(polyval(p, x1) - polyval(p, x0))
  if abs((x - x1)/ x1) < tol
    break;
  endif
  x0 = x1;
  x1 = x;
  steps = steps + 1;
  endwhile
  endfunction
