function A_k = task1(image, k)
  A = double(imread(image));
  [U,S,V] = svd(A);
  V = V';
  [m n] = size(A);
##  Trunchierea matricelor U S V 
  U = U(1:m,1:k);
  S = S(1:k,1:k);
  V = V(1:k,1:n);
##  Calcul A_k
  A_k = U * S * V;
endfunction