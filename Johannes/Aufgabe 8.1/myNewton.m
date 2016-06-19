function [x,e,v] = myNewton (f,df,x0)
v = [];
e = [];
x = [];
c = false;
i = 1;
do;
  if(df(x0)==0);
    printf("Ableitung bei ", x0, " ist Null. Error 12.");
    break;
  endif;
  b = x0-f(x0)/df(x0);
  x(i) = b;
  e(i) = abs(b-x0);
  v(i) = f(b);
  if(abs(b-x0)<10^(-12) || i == 50)
    c = true;
  endif;
  x0 = b;
  i += 1;
until(c == true);
endfunction;
