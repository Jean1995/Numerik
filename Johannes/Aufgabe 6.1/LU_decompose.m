function [LU] = LU_decompose (U)
a = length(U);
o = length(U);
L = eye(a,a);
i = 1;
c = (a-1)*(a-1+1)/2;
while (i <= c-1);
  b = 1;
  while (b <= a-1);
    L(i+b,i) = L(i+b,i) + L(i,i)*U(i+b,i)/U(i,i);
    U(i+b,:) = U(i+b,:) - U(i,:)*U(i+b,i)/U(i,i);
    b= b+1;
  end;
  i = i+1;
  a = a-1;
end;
LU = L+U-eye(o,o);
endfunction;
