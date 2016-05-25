clc;
clear;

f = @(x) 1/(1+25*x**2);
f_exakt = 2/5 * atan(5);

j=100
  a=-1;
  b=1;
  N=j;
  w = ((b-a)/(90*N)) .*[7 32 12 32 7]; %Not sure where to put the dependency of w on N
  p = [0 0.25 0.5 0.75 1];
  ret = myQuadraturSum1D(f,w,p,a,b,N);
  

  ret