function x = direct_forward_solve(U,z)
%DIRECT_FORWARD_SOLVE Löst lineares GLS für untere Dreicksmatrix
n = length(U);
x(1) = z(1)/U(1,1);
for i=2:n
  x(i) = 0;
  for j=1:i-1
    x(i) = x(i) + U(i, j) * x(j);
    end;
   x(i) = z(i) - x(i);
   x(i) = x(i)/U(i,i);
  end;

