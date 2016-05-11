function [p] = meinePunkte (a,b,n);
p = [];
for i=1:1:n;
p(i) = a+(i-1)*(b-a)/(n-1);
end;
p

endfunction;
