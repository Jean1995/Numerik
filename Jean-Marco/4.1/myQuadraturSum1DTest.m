clc;
clear;

f = @(x) 1./(1+25*x'.^2);
f_exakt = 2/5 * atan(5);

%Trapesregel

j=0; for j=1:100
  a=-1;
  b=1;
  N=j;
  w = (b-a)/(2*N).*[1 1]; %Not sure where to put the dependency of w on N
  p = [0 1];
  plot_y_1(j) = myQuadraturSum1D(f,w,p,a,b,N);
end;

plot_x_1 = 1:100;
plot_y_1 = abs((plot_y_1 - f_exakt)/f_exakt);


%Simpsonregel

j=0; for j=1:100
  a=-1;
  b=1;
  N=j;
  w = ((b-a)/(6*N)).*[1 4 1]; %Not sure where to put the dependency of w on N
  p = [0 0.5 1];
  plot_y_2(j) = myQuadraturSum1D(f,w,p,a,b,N);
end;

plot_x_2 = 1:100;

plot_y_2 = abs((plot_y_2 - f_exakt)/f_exakt);


%Milneregel

j=0; for j=1:100
  a=-1;
  b=1;
  N=j;
  w = ((b-a)/(90*N)).*[7 32 12 32 7]; %Not sure where to put the dependency of w on N
  p = [0 0.25 0.5 0.75 1];
  plot_y_3(j) = myQuadraturSum1D(f,w,p,a,b,N);
end;

plot_x_3 = 1:100;

plot_y_3 = abs((plot_y_3 - f_exakt)/f_exakt);




semilogy(plot_x_1, plot_y_1, 'b*',  plot_x_2, plot_y_2, 'g*', plot_x_3, plot_y_3, 'r*');
legend("Trapezregel", "Simpson-Regel", "Milne-Regel");