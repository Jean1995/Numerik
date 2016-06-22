function [x,e,v] = myNewton(f,df,x0)
%Führt Newtonverfahren durch, duh!

x(1) = x0 - f(x0)/df(x0); 
e(1) = abs(x(1)-x0);
v(1) = f(x(1));
i=1;

while (i<=50 && e(i)>10**(-12))
  x(i+1) = x(i) - f(x(i))/df(x(i));
  e(i+1) = abs(x(i+1)-x(i));
  v(i+1) = f(x(i+1)); 
  i=i+1;
end