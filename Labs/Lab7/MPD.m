function [L y] = MPD (A, y_param, tol, max_iter)
  y_old = y_param; #y ales random
  for k =1:max_iter
    z = A*y_old;
    y = z/norm(z);
    L = y'*A*y;
    if norm(y - y_old) < tol 
      break;
    endif
    y_old = y;
  endfor
endfunction

#Dai o toleranta = 0.001
#y_param il alegi ca vector de 1x2
#max_iter ii dai 100-1000
#A = matricea pe care faci MPD