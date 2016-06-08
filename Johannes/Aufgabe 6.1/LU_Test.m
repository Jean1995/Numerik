function LU_Test ()

for n=10:5:25;
  x = [];
  b = [];
  for i=1:1:n
    x(i) = (n-i)/n;
    if i<(n/2)
      b(i) = 1;
    else
      b(i) = 2;
    endif
  end;
  V = vander(x);
  LU = LU_decompose(V);
  n
  y = backward_solve(LU,forward_solve(LU, b));
  y
  m = norm(V*transpose(y)-transpose(b))
end;

endfunction
