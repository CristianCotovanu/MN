function [m A eigenfaces pr_img] = eigenface_core(database_path)
##  Creearea unui path pentru fiecare imagine si 
##  completarea unei coloane din T cu elementele matricei
  for i = 1:10
    input_strings = strcat(database_path, '/', int2str(i), '.jpg ');
    matrix = double(rgb2gray(imread(input_strings))); 
    T(:,i) = matrix(:);
  endfor
##  Calcul vector de average
  m = mean(T,2);
  A = T - m;
  aux = (A)'*A;
  [U S V] = svd(aux);
##  aux_mat contine vectorii proprii coresp valorilor proprii > 1 din S
  aux_mat = [];
  for i = 1:rows(S)
    if S(i,i) > 1
      aux_mat = [aux_mat, V(:,i)];
    endif
  endfor
  eigenfaces = A * aux_mat;
  pr_img =  (eigenfaces)' * A;
endfunction