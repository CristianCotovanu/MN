K-Means
==
Descriere
--
Implementarea unui algoritm K-means de clustering.

Rulare
--

Implementare
--
##### Tasks
1. Am folosit load pentru cele 2 fisiere, iar pentru matricea de puncte am transformat  
structura generata de load intr-o matrice.
	
2. Am luat mai intai centroizii, alesi random din multimea de puncte.  
Apoi pentru calculul distantei minime am initializat distanta minima cu dist.   
dintre primul centroid si punct si am considerat un vector de lungime egala cu   
numarul punctelor in care adaug indicele corespunzator clusterului cu distanta   
minima, urmand apoi sa se schimbe daca gaseste o distanta mai mica actualizandu-se  
si numarul din vectorul cu indici.  
Voi retine centroizii in old_centroids, initializand cu zero-uri matricea de centroizi,     
adaugand toate punctele corespunzatoare in noua matrice, numarul de puncte corespunzatoare  
se va contoriza intr-o alta matrice, urmand apoi sa se faca media intre valoare sumei   
de puncte si numarul lor.  
In final, conditia de oprire este convergenta si anume momentul cand matricea cu centroizii   
vechi este identica cu cea calculata la pasul curent.

3.  Am luat vectorul de indici, iar pentru fiecare centroid am reprezentat cu scatter3   
punctele corespunzatoare, punctele corespunzatoare fiecarui centroid avand o culoare distincta.

4.  Am folosit ideea cu minimul distantei de la task2 si am calculat apoi costul pentru fiecare centroid,  
adunand costurile la final.

5.  Am considerat un vector pentru cost in care am adaugat valorile functiei pentru  
fiecare valoare de la 1 la 10, apoi cu functia plot le-am reprezentat grafic