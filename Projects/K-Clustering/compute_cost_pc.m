# computes a clustering solution total cost
 function cost = compute_cost_pc(points, centroids)
   #Initializare matrice de costuri (fiecare linie corespunde unui centroid)
   # si calcul nr de puncte si centroizi
   nr_points = size(points,1);
   nr_centroids = size(centroids,1);
   cost_mat = zeros(nr_centroids,1);
   
  #Calculul unui vector de indici corespunzatori fiecare clusterului
  #pentru fiecare punct in parte ce are norma minima   
   for i=1:nr_points
     #Minimul este initializat cu prima norma
     minimum = norm(points(i,:) - centroids(1,:));
     k = 1;
     for j=2:nr_centroids
       new_min = norm(points(i,:) - centroids(j,:));
       if new_min < minimum
       minimum = new_min;
       k = j;
       endif
     endfor
     indices_points(i) = k;
   endfor
  
  #Calculul costului pentru fiecare centroid in matricea de costuri  
  for i = 1:nr_points
   cost_mat(indices_points(i)) = cost_mat(indices_points(i)) + norm(points(i,:) - centroids(indices_points(i),:));
  endfor
  
 cost = sum(cost_mat);
 endfunction