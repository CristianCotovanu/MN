function [L y] = MPI (A, y_param, tol, max_iter, miu)
  y_old = y_param; #y ales random
  I = eye(2);
  for k =1:max_iter
    z = inv(A - miu*I)*y_old;
    y = z/norm(z);
    L = y'*A*y;
    if norm(y - y_old) < tol 
      break;
    endif
    y_old = y;
  endfor
endfunction