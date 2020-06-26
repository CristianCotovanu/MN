function y_f = heun (f, x_0, y_0, x_f, steps)
  delta = (x_f - x_0)/steps;
  a_1 = 1/2;
  a_2 = 1/2;
  for k = 1:steps
  k_1 = f(x_0, y_0);
  k_2 = f(x_0 + delta, y_0+k_1*delta);
  y_f = y_0 + delta * (a_1*k_1 + a_2*k_2);
  x_0 = x_0 + delta;
  y_0 = y_f;
  endfor
endfunction