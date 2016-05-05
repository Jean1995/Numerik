function n = basispolynom(c, x, z)
  k = c(length(c));
  for i=length(c)-1:-1:1;
    k = c(i) + (z-x(i)) .* k;
    end;
    n = k;