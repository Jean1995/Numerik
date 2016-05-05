
x = 0.8 : 5*10**(-5) : 1.2;
y = (single(x)-1).^7;
subplot(1,2,1), plot(x,y);
title("Direkte Auswertung");

x2 = 0.8 : 5*10**(-5) : 1.2;
y2 = ((((((single(x2)-7).*single(x2) + 21).*single(x2) - 35).*single(x2) + 35).*single(x2) - 21).* single(x2)+7).*single(x2) - 1;
subplot(1,2,2), plot(x2,y2);
title("Auswertung mit HORNER-Form");
