function x = backward_solve(LU,z)
  tmp = tril(LU,-1);
  tmp = tmp + eye(length(LU));
  x = direct_backward_solve(tmp,z);