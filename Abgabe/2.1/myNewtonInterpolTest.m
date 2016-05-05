%MYNEWTONINTERPOLTEST Newtoninterpolation zur Runge-Funktion, verschiedene Werte für n
j=0;
for n=[7, 12, 17];
  j++;
  x_a = [];
  y_a = [];
  x_b = [];
  y_b = [];
  
  x_plot = -1:10^(-3):1;
  y_plot = (1+25 * x_plot.^2 ).^(-1);

  
  for i=0:1:n;
    x_a(i+1) = -1 + (2*i)/n;
    y_a(i+1) = 1/(1+25 * x_a(i+1)^2);
  end;
  
    c_a = myNewtonInterpol(x_a,y_a); 
    x_a_plot = -1 : 10^(-2):1;
    y_a_plot = basispolynom(c_a, x_a, x_a_plot);
  
  m=101;
  for i=1:1:m;
    o = -1 + 2*i/m;
    y_abw(i) = abs ( basispolynom(c_a, x_a, o) - (1+25*o**2)**(-1)); # Differenz an der i-ten Stelle
    x_abw(i) = o; # x-Wert der i-ten Stelle
    end;
  
  [max_wert, max_pos] = max(y_abw);
  
  fprintf('Abweichung äquidistante Knoten für n= %d\n', n);
  fprintf('Abweichung von %d\n', max_wert);
  fprintf('Abweichung bei %d\n\n', x_abw(max_pos));
 
  
  for i=0:1:n;
    x_b(i+1) = cos(((2*i+1)*pi)/(2*n+2));
    y_b(i+1) = 1/(1+25 * x_b(i+1)^2);
  end;
  
    c_b = myNewtonInterpol(x_b,y_b); 
    x_b_plot = -1 : 10^(-2):1;
    y_b_plot = basispolynom(c_b, x_b, x_b_plot);
  
  
    m=101;
  for i=1:1:m;
    o = -1 + 2*i/m;
    y_abw(i) = abs ( basispolynom(c_b, x_b, o) - (1+25*o**2)**(-1)); # Differenz an der i-ten Stelle
    x_abw(i) = o; # x-Wert der i-ten Stelle
    end;
  
  [max_wert, max_pos] = max(y_abw);
  
  fprintf('Abweichung Tschebyscheff Knoten für n= %d\n', n);
  fprintf('Abweichung von %d\n', max_wert);
  fprintf('Abweichung bei %d\n\n', x_abw(max_pos));
  
    figure(j);
    plot(x_plot, y_plot, 'g-', x_a, y_a, 'r*', x_b , y_b, 'b*', x_a_plot, y_a_plot, 'r-', x_b_plot, y_b_plot, 'b-');
 end;