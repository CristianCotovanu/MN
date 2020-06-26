function [min_dist output_img_index] = face_recognition(image_path, m, A, eigenfaces, pr_img)
  matrix = double(rgb2gray(imread(image_path)));
  T = matrix(:);
  aux = T - m;
  PrTestImg = (eigenfaces)' * aux;
## Calcul distanta minima si asocierea ei cu o coloana din pr_img
  output_img_index = 1;
  min_dist = norm(pr_img(:,1) - PrTestImg);
  for i = 2:columns(pr_img)
    temp = norm(pr_img(:,i) - PrTestImg);
    if temp < min_dist 
      min_dist = temp;
      output_img_index = i;
    endif
  endfor
endfunction