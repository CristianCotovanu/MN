function task2(image)
  A = double(imread(image));
  [m n] = size(A);
  k = [1:19,20:20:99,100:30:min(m,n)];
  [U S V] = svd(A);
##  Graph 1
  sing_values = diag(S);
  figure
  plot(k, sing_values(k));
##  Graph2
  sum1 = sum(sing_values);
  sum2 = 0;
  sum12 = [];
  for i = k
      sum2 = sum(sing_values(1:i));
      sum12 = [sum12, sum2/sum1]; 
  endfor
  figure
  plot(k, sum12);  
##  Graph3
  sum_vect = [];
  for t = k
      sum = 0;
      A_k = task1(image, t);
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
    compression_rate = (m*k + n*k +k)/m*n;
    figure
    plot(k, compression_rate);
endfunction