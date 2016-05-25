function [v] = myQuadraturSum1D (f, w, p, a, b, N)
Ergebnis = 0;
p = (p-a)/N +a;
for l=1:1:N
  for i=1:1:length(p);
    Ergebnis = Ergebnis + f(p(i))*w(i);
  end;
  p = p+((b-a)/N);
end;
v = Ergebnis;

endfunction
