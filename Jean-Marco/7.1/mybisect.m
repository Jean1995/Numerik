function [x,e,v] = mybisect(f,x00,x0)
%MYBISECT Bisektionsverfahren mit Anfangsparametern x00, x0, functionhandle f

n = 2;
if x0>x00
  xr=x0;
  xl=x00;
else
  xr=x00; 
  xl=x0;
end

% first step (initial step)
m = 0.5*(xr+xl);
v(1) = f(m);
x(1) = m;
if f(xl)*f(m)<0
  xr = m;
else
  xl = m;
end
e(1) = 0; 

while 1
  m = 0.5*(xr+xl);
  v(n) = f(m);
  x(n) = m;
  if f(xl)*f(m)<0
    xr = m;
  else
    xl = m;
  end
  e(n) = abs(x(n)-x(n-1));
  if e(n)<10**(-12)
    break;
  end
  n=n+1;
end
