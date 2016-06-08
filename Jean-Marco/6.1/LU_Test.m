function LU_Test()
for n = 10:5:25
  for i=1:n
    x(i) = (n-i)/n;
    if i < n/2
      b(i)=1;
    else
      b(i)=2;
     end
  end
  v = vander(x);
  LU = LU_decompose(v);
  fws = forward_solve(LU, b);
  y = backward_solve(LU, b);
  norm(v*y-b,2)
 end