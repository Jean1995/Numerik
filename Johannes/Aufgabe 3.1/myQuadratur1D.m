function [c] = myQuadratur1D (f,w,p);
Ergebnis = 0;
for i=1:1:length(p);
  Ergebnis = Ergebnis + f(p(i))*w(i);
end;
Ergebnis
endfunction;