1;
Numar_Aparitii('input.txt','Ana');

function Numar_Aparitii(input,string)
    fid = fopen(input,'r');
    line = fgetl(fid);
    while ischar(line)
      k = length(strfind(line,string));
       fprintf(1,'%d %s\n',k,line);
      line = fgetl(fid);
    endwhile
endfunction