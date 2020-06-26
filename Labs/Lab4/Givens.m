function [Q R] = Givens (A)
  [m n] = size(A);
  Gg = eye(m);
  for k = 1:n-1
    for l = k+1:m
      G = eye(m); 
      
      r = sqrt(A(k,k)^2 + A(l,k)^2);
      c = A(k,k)/r;
      s = -A(l,k)/r;
      
      G(k,k) = c;
      G(l,l) = c;
      G(k,l) = -s;
      G(l,k) = s;
      
      A = G * A;
      Gg = G * Gg;
    endfor
  endfor
  Q = Gg';
  R = A;
endfunction
