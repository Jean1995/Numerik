function x = direct_backward_solve(U,z)
%DIRECT_BACKWARD_SOLVE Löst lineares GLS für obere Dreicksmatrix
n = length(U);
x(n) = z(n)/U(n,n);
for i=n-1:-1:1
  for j=i+1:n
    x(i) = x(i) + U(i, j) * x(j);
    end;
   x(i) = z(i) - x(i);
   x(i) = x(i)/U(i,i);
  end;

