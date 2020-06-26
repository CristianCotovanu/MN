% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
	#Numar de puncte din matricea points si numar de centroizi  
  nr_points = size(points,1);
  nr_centroids = size(centroids,1);
  
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
   
  #Reprezentarea grafica cu scatter si initialzarea vectorului de culori  
  color_array = [ 'c' 'g' 'm' 'r' 'k'];
  for j=1:nr_centroids
    for i=1:nr_points
      if indices_points(i) == j
        scatter3(points(i,1), points(i,2), points(i,3), color_array(j), 'filled');
        hold on
      endif
    endfor
  endfor
  
  #Unghiul sub care e vazut graficul
  view(40,40);
endfunction