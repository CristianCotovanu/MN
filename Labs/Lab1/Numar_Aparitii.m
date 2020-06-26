## Copyright (C) 2019 Cristi
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} Numar_Aparitii (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Cristi <Cristi@DESKTOP-B4EAQ6B>
## Created: 2019-02-28
1;
function Numar_Aparitii(input, string)
    suma = 0;
    fid = fopen(input,'r');
    line = fgetl(fid);
    while ischar(line)
      k = length(strfind(line,string));
       fprintf(1,'%d %s\n',k,line);
      line = fgetl(fid);
      suma = suma + k;
    endwhile
    disp(suma);
endfunction