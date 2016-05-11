function [c] = myQuadratur1D(f,w,p)
%myQuadratur1D  Numerische Integration mit bel. Stützstellen

d = length(w);
c = 0;
for i=1:1:d;
  c = c + w(i) * f(p(i));
end;