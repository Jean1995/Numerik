function z = forward_solve(LU,b)
  z = direct_forward_solve(triu(LU),b);