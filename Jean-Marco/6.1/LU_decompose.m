function LU = LU_decompose(A)
for n=1:length(A)  
  for i=n+1:length(A)
    q = A(i,n)/A(n,n);  
    A(i,n) = q;
    for j=i:length(A)
      A(i,j) = A(i,j) - q * A(n,j);
    end;
  end;
end;

LU = A;