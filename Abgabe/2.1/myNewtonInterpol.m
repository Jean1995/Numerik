function c = myNewtonInterpol(x,y)

n = length(y);

A = zeros(n, n-1);
A = [transpose(y) A];

for i=2:1:n;
  for j=1:1:(n-i+1);
  A(j,i) = (A(j+1, i-1) - A(j, i-1)) / ( x(i+j-1)-x(j)  );
  end;
 end;
 
c = A(1,:);
 