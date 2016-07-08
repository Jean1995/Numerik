function [x, numit] = my_jacobi(A,b,x0,eps,maxit)
%Jacobiverfahren
n=0;
x=x0;
rel_ed = 0;
D_inv = diag(1/diag(A));
while 1
  %do stuff here
  if(n>maxit)
    warning("zZz... Octave fell asleep! Too many iterations!");
    break;
    endif
    
  tmp = b-A*x;
  if(n==1)
    rel_ed = norm(tmp,2);
    endif      
  x = x + D_inv*tmp;      
  if(norm(tmp,2)<eps*rel_ed)
    disp("Iteration successful. Stopped with Iteration number");
    disp(n);
    break;
    endif
  n=n+1;
end

numit = n;