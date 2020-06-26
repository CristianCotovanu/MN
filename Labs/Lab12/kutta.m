function y_f = kutta(f, x_0, y_0, x_f, steps)
  delta = (x_f - x_0)/steps;
  a_1 = 1/8;
  a_2 = 3/8;
  a_3 = 3/8;
  a_4 = 1/8;
  for k = 1:steps
    k_1 = f(x_0, y_0);
    k_2 = f(x_0 + delta/3, y_0 + delta/3*k_1);
    k_3 = f(x_0 + delta*2/3, y_0 - delta/3*k_1 + delta*k_2);
    k_4 = f(x_0 + delta, y_0 + delta*k_1 - delta*k_2 + delta*k_3);
    y_f = y_0 + delta* (a_1*k_1 + a_2*k_2 + a_3*k_3 + a_4*k_4);
    y_0 = y_f;
    x_0 = x_0 + delta;
  endfor
endfunction