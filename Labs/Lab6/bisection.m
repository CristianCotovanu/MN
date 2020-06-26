function [m, steps] = bisection (a, b, p, tol)
  steps = 0;
  m0 = a;
  m = (a + b)/2;
 while(1)
  m = (a+b)/2;
    if polyval(p,a)*polyval(p,m) == 0
      break;
    elseif polyval(p,a)*polyval(p,m) < 0
      b = m;
    elseif polyval(p,a)*polyval(p,m) > 0
      a = m;
    endif
  if abs((m - m0)/m0) < tol
    break;
  endif
  steps = steps +1;
  m0 = m;
endwhile
endfunction