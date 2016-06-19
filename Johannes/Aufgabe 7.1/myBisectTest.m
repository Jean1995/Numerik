function myBisectTest;
f = @function1;
[x,e,v] = mybisect(f,0,0.75);
N = [1:1:length(e)];
semilogy(N, e,'r-');
endfunction;

% Stimmt mit Erwartung überein