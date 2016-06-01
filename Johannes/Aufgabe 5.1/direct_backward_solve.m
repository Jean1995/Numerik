function [x] = direct_backward_solve (U, z)
x = [];
n = length(z);
x(n) = z(n)/U(n,n);
n -= 1;
while (n>=1);
  b = 0;
  i = length(z);
  while (i>n);
    b = b + x(i)*U(n,i);
    i -=1;
  end;
  x(n) = (z(n) - b)/U(n,n);
  n -=1;
end;
printf("Loesung des LGS ist: ",x);
endfunction;
