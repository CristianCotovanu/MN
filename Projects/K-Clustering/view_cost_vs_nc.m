function view_cost_vs_nc(file_points)
  #Citire matrice de puncte si initilizare vector de costuri corespunzator 
  #valorilor de la 1 la 10
  points = cell2mat(struct2cell(load(file_points)));
  cost = zeros(10);
  centroids = zeros(10,3);
  
  #Calcul costuri
  for i=1:10
    centroids = clustering_pc(points,i);
    cost(i) = compute_cost_pc(points,centroids);
  endfor
  
 #Reprezentare grafica cost
 plot(1:10,cost(1:10),'LineWidth', 3);

 endfunction