## Copyright (C) 2016 Johannes
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} ergebnis (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Johannes <Johannes@YOHIBOOK>
## Created: 2016-05-04

function ergebnis;
printf("Ergebnisse in der Reihenfolge a), b), c) ")
for i = 3:3:30;
  i
  euler1(-5.5,i)
  euler2(5.5,i)
  euler3(-0.5,i)
end;
printf("Auffaellig ist, dass die erste Methode fuer bestimmte n anfangs negative Werte ausgibt.")
printf("Dies liegt daran, dass es eine alternierende Reihe ist.")
printf("Das gilt auch fuer die letzte Methode, jedoch sind die Werte so klein, dass die Reihe sehr schnell konvergiert.")
printf("Die zweite Methode ist nicht anfaellig fuer bestimmte n, da nur ueber positive Werte summiert wird.")
printf("Kleine Exponenten deren Kehrwert genommen wird und spaeter potenziert werden sind am Besten.")
endfunction;
