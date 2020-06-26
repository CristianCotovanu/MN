function [x,k] = SOR (A, b, tol, x_0, max_steps, w)
  [n, n] = size(A);
  x = zeros(length(b),1);
  for k = 1:max_steps
    for i = 1:n
      suma2 = A(i,1:i-1)*x(1:i-1)
      suma1 = A(i,i+1:n)*x(i+1:n)
    endfor
    x(i) = (1-w)*x_0(i-1)+(1/A(i,i))*w(b(i) - suma1 - suma2);
    if norm(x_0 - x) < tol
        break;
    endif
    x_0 = x;
  endfor
endfunction

