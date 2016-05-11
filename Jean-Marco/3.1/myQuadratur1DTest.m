clc;
clear;
f = @(x) 1/(x**2);
b=1;
a=0.5;
% Trapezregel
w_1 = [ (b-a)/2 (b-a)/2 ];
p_1 = [a b];
c_1 = myQuadratur1D(f, w_1, p_1);
fprintf('Berechnung mit Trapezregel: %d\n\n', c_1);
% Simpsonregel
w_2 = [ (b-a)/6 4*(b-a)/6 (b-a)/6];
p_2 = [a (a+b)/2 b];
c_2 = myQuadratur1D(f, w_2, p_2);
fprintf('Berechnung mit Simpsonregel: %d\n\n', c_2);
% 3/8 Regel
w_3 = [ (b-a)/8 3*(b-a)/8 3*(b-a)/8 (b-a)/8];
p_3 = [a a+(b-a)/3 b-(b-a)/3 b];
c_3 = myQuadratur1D(f, w_3, p_3);
fprintf('Berechnung mit 3/8 Regel: %d\n\n', c_3);