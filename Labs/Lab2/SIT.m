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
## @deftypefn {} {@var{retval} =} SIT (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Cristi <Cristi@DESKTOP-B4EAQ6B>
## Created: 2019-03-11

function [x] = SIT (A, b)
  n = length(b);
  x = zeros(n, 1);
  ## x(1) = b(1) / A(1, 1);
  for k = 1 : n 
    sum = 0;
    for i = 1:k-1 
      sum = sum + A(k, i)*x(i);
    endfor
    x(k) = (b(k) - sum)/A(k,k);
  endfor
endfunction
