a = 0: 0.1 : 1;
b = Prob1(a);

fileID = fopen('valori.txt','w');
fprintf(fileID,'%f ', b);
fclose(fileID);