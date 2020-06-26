function y_f = euler_dif (f, x_0, y_0, x_f, steps)
  delta = (x_f - x_0)/steps;
  for k = 1:steps
  y_f = y_0 + delta*f(x_0, y_0);
  x_0 = x_0 + delta;
  y_0 = y_f;
  endfor
endfunction