%MYBISECTEST
f = @(x) cos(2*x)**2 - x**2;
df = @(x) -2*x-2*sin(4*x);

[x_1, e_1, v_1] = mybisect(f, 0, 0.75);

n = 1:length(e_1);
semilogy(n, e_1(n), "+");