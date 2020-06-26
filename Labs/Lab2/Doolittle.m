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
## @deftypefn {} {@var{retval} =} foo1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Cristi <Cristi@DESKTOP-B4EAQ6B>
## Created: 2019-02-24

function [L, U] = Doolittle (A)
  n = length(A);
  U = zeros(n);
  L = eye(n);
  
  for k = 1:n
    for m = k:n
      S = 0;
      for j=1:k-1
        S = S + L(k,j)*U(j,m);
      endfor
      U(k,m) = A(k,m) - S;
    endfor
    
    for i = k+1:n
      S = 0;
      for j = 1:k-1
        S = S + L(i, j)*U(j, k);
      endfor
      L(1,k) = (A(i,k) - S)/U(k,k);
    endfor
  endfor
endfunction