function task5(image)
  A = double(imread(image));
  [m n] = size(A);
  k = [1:19,20:20:99,100:30:min(m,n)];
  [U S V] = svd(A);
  sing_values = diag(S);
## Graph1
  figure
  plot(k, diag(S)(k));
##  Graph2  
##  Partea de task3   
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
  Z_values = diag(S);
  sum1 = sum(Z_values);
  sum2 = 0;
  sum12 = [];
  for i = k
      sum2 = sum(Z_values(1:i));
      sum12 = [sum12, sum2/sum1]; 
  endfor
  figure
  plot(k, sum12);
##  Graph3
  A = double(imread(image)); 
  sum_vect = [];
  for t = k
      sum = 0;
      A_k = task3(image, t);
      for i = 1:m
          for j = 1:n
          sum = sum + (A(i,j) - A_k(i,j))^2;
          endfor
      endfor
      sum_vect = [sum_vect, sum/(m*n)];
  endfor
    figure
    plot(k, sum_vect);
##  Graph4
    compression_rate = (2*k + 1)/n;
    figure
    plot(k, compression_rate);
end