function V = Vandermonde(v)
%Vandermonde Berechnet Vandermonde-Matrix
n = length(v);
V = zeros(n);
for i=n:-1:1
  V(:,n-i+1) = v.^(i-1);
  end;