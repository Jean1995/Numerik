function [V] = Vandermonde (v)
a = length(v);
n = a^2;
b = 1;
c = 1;
V = zeros(a);
while (b<=n)
  if(mod(b,a)==0)
    V(a,c) = v(a)^(a-c);
  else
    V(mod(b,a),c) = v(mod(b,a))^(a-c);
  endif;
  if(mod(b,a) == 0)
    c+=1;
  endif;
  b+=1;
  
end;

endfunction
