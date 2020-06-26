function [x, steps] = NewtonRhapson (p, x0, tol)
  steps = 0;
  while(1)
  steps = steps + 1;
    x = x0 - polyval(p,x0)/polyval(polyder(p),x0);
    if abs((x - x0)/x0) < tol
      break;
    endif
    x0 = x;
  endwhile
endfunction
