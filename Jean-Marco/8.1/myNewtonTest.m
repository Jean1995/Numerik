%MYNEWTONTEST
f = @(x) cos(2*x)**2 - x**2;
df = @(x) -2*x-2*sin(4*x);

[x_1, e_1, v_1] = mybisect(f, 0, 0.75);

n1 = 1:length(e_1);
%semilogy(n, e_1(n), "+");


[x_2, e_2, v_2] = myNewton(f, df, 0.75);

n2 = 1:length(e_2);
xlabel("Iterationsschritte")
ylabel("Fehler")
semilogy(n1, e_1(n1), "+2;Bisektion;", n2, e_2(n2), "+3;Newton;");

% Übereinstimmung der Erwartung: Lineare Konvergenz des Bisektionsverfahrens gegen quadratische Konvergenz von Newton.