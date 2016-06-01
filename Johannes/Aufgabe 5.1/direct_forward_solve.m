function [x] = direct_forward_solve (U,z)
x = [];
n = length(z);
j = 1;
x(j) = z(j)/U(j,j);
j += 1;
while (j<=n);
  b = 0;
  i = 1;
  while (i<j);
    b = b + x(i)*U(j,i);
    i +=1;
  end;
  x(j) = (z(j) - b)/U(j,j);
  j +=1;
end;
printf("Loesung des LGS ist: ",x);
endfunction;