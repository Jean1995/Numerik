function myNewtonTest()
f = @function1;
df = @dfunction1;
[x,e,v] = myNewton(f, df, 0.75);
[k,p,d] = mybisect(f, 0, 0.75);
i = [1:1:length(e)];
z = [1:1:length(k)];
semilogy(i,e,'r--');
hold on;
semilogy(z,p,'b--');
endfunction;
