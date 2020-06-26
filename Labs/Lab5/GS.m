function [x,steps] = GS (A, b, x0, tol, max_steps)
  n = length(b);
  x = x0;
  for steps = 1:max_steps
    for i = 1:n
      sum_new_step = A(i,1:i-1)*x(1:i-1);
      sum_old_step = A(i,i+1:n)*x0(i+1:n);
      x(i) = (b(i) - (sum_old_step + sum_new_step))/A(i,i);
    endfor
    if norm(x0 - x) < tol
        break;
    endif
    
    x0 = x;
  endfor
endfunction
