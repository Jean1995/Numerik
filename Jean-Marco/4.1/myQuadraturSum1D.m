function v = myQuadraturSum1D(f,w,p,a,b,N)
%MYQUADRATURSUM1D Setzt beliebige summierte Quadraturformel für Funktion f um

h=(b-a)/N;
p_neu = p.*h;
v=0;

i=0; for i=1:N
  I_start = a+(i-1)*h;
  I = p_neu + I_start;
  q = 0;
  for c=1:length(w)
    wert = f(I(c));
    q = q + wert * w(c);
  end;
  v = v+q;
  end
