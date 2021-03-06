function [A_k S] = task3(image, k)
  A = double(imread(image));
  [m n] = size(A);
  miu = [];
##  Calcul medie fiecare a(i) 
  for i = 1:m
    miu(i) = sum(A,2)(i)/n;
  endfor
##  Actualizare matrice A 
##  a(i) = a(i) - miu 
  for i = 1:m
    A(i,:) = A(i,:) - miu(i);
  endfor
##  Construire + svd pentru Z
  Z = A'/sqrt(n-1);
  [U S V] = svd(Z);
##  W contine primele K coloane din V
  W = V(1:m,1:k);
  Y = W'*A;
##  Aproximare finala A_k
  A_k = W*Y + miu';
endfunction