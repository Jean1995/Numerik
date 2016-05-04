function z = expo(x, n)
%EXPO Berechnet über die Taylorreihe den Wert von exp(x) mit n Summanden
z=0;
i=0;
for i=0:n;
z += (x)**i * 1/(factorial(i));
end;
