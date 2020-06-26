% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
  #Alegere de 3 puncte random ce reprezinta centroizii
  centroids = zeros(NC,3); 
  randid = randperm(size(points,1));
  centroids = points(randid(1:NC),:);

  nr_points = size(points,1);
  indices_points = zeros(1,nr_points);
  
  while(1)
  #Calculul unui vector de indici corespunzatori fiecare clusterului
  #pentru fiecare punct in parte ce are norma minima   
   for i=1:nr_points
     #Minimul este initializat cu prima norma
     minimum = norm(points(i,:) - centroids(1,:));
     k = 1;
     for j=2:NC
       new_min = norm(points(i,:) - centroids(j,:));
       if new_min < minimum
         minimum = new_min;
         k = j;
       endif
     endfor
     indices_points(i) = k;
   endfor
   
   #Retine vechea valoare a centroizilor si
   #cate puncte au fost adaugate pentru fiecare centroid
   old_centroids = centroids;
   centroids = zeros(NC,3); 
   count = zeros(NC,1); 
   
   #Calculul noilor valori pentru centroizi
   for i=1:nr_points
    centroids(indices_points(i),:) = centroids(indices_points(i),:) + points(i,:);
    count(indices_points(i)) = count(indices_points(i)) + 1;
   endfor
   
   for j=1:NC
     if count(j) ~= 0
        centroids(j,:) = centroids(j,:)/count(j);
     else
        centroids(j,:) = 0;
     endif
   endfor
    
    if(centroids == old_centroids)
      break;
    endif  
  endwhile
  
endfunction