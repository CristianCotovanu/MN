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
## @deftypefn {} {@var{retval} =} Prob4 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Cristi <Cristi@DESKTOP-B4EAQ6B>
## Created: 2019-02-28

function dim = Prob4(file) 
  filestats = dir(file);  
  dim = filestats.bytes;
endfunction
