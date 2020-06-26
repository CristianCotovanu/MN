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
## @deftypefn {} {@var{retval} =} Crout (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Cristi <Cristi@DESKTOP-B4EAQ6B>
## Created: 2019-03-11

function [L, U] = Crout (A)
  n = length(A);
  U = eye(n);
  L = eye(n);
  L(:,1) = A(:,1);
  U(1,:) = A(1,:)/L(1,1);
  
  for j=2:n
  U(1,j)=A(1,j)/L(1,1);
  endfor
  for i=2:n
    for j=2:i
         L(i,j)=A(i,j) - L(i,1:j-1)*U(1:j-1,j);
    endfor
    for j=i+1:n
         U(i,j)=(A(i,j) - L(i,1:i-1)*U(1:i-1,j))/L(i,i);
    endfor
  endfor
 endfunction