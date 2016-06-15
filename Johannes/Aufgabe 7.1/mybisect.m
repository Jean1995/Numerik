function [x,e,v] = mybisect (f, x00, x0)
x = []
e = []
v = []
i = 1;
while((abs(x0-x00))>10^(-12));
  b = (x00+x0)/2;
  if (f(x00)*f(b)< 0); 
    x0 = b;
    x(i) = b;
    e(i) = abs(x00-b);
    v(i) = f(x00);
    i +=1;
    continue;
  elseif (f(b)*f(x0)< 0);
    x00 = b;
    x(i) = b;
    e(i) = abs(x0-b);
    v(i) = f(x00);
    i+=1;
    continue;
  elseif (f(b)==0);
    x(i) = b;
    e(i) = 0;
    v(i) = f(b);
    break;
  endif;
end;
endfunction;
