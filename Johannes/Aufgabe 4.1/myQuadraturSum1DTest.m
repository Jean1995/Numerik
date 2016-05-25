function myQuadraturSum1DTest()

f = @function1;
a = -1;
b = 1;

p_1 = meinePunkte(a,b,2);
p_2 = meinePunkte(a,b,3);
p_3 = meinePunkte(a,b,5);


t_1 = [];
t_2 = [];
t_3 = [];
for N=1:1:100
  #Trapez
  w = (b-a)/(2*N)*[1 1];
  t_1(N) = myQuadraturSum1D(f, w, p_1, a, b, N);
  #Simpson
  w = (b-a)/(6*N)*[1 4 1];
  t_2(N) = myQuadraturSum1D(f, w, p_2, a, b, N);
  #Milne
  w = (b-a)/(90*N)*[7 32 12 32 7];
  t_3(N) = myQuadraturSum1D(f, w, p_3, a, b, N);
end;
r = (2/5)*atan(5);
t_1 = abs(t_1 - r);
t_2 = abs(t_2 - r);
t_3 = abs(t_3 - r);

N = [1:1:100];
semilogy(N, t_1,'r-', N, t_2,'b-', N,t_3,'g-')

endfunction
