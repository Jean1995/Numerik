function myQuadratur1DTest ();
format long;
f = @function1;
printf("p sind die Punkte und w die Gewichte")
printf("\n")
printf("Integrationsgrenzen:")
printf("\n")
a = 0.5
b = 1
n = 2;
printf("Trapezregel:")
printf("\n")
p = meinePunkte(a,b,n);
w = [(b-a)/2 (b-a)/2]
myQuadratur1D(f,w,p);

n = 3;
printf("Simpsonregel:")
printf("\n")
p = meinePunkte(a,b,n);
w = [1 4 1];
w = w*(b-a)/6
myQuadratur1D(f,w,p);

n = 4;
printf("Drei-Achtel-Regel:")
printf("\n")
p = meinePunkte(a,b,n);
w = [1 3 3 1];
w = w*(b-a)/8
myQuadratur1D(f,w,p);
endfunction;
