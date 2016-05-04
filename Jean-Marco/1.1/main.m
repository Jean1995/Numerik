disp('Programmieraufgabe 1.1:');
disp('Teilaufgabe a:');
format long;
for i=3:3:30;
  fprintf('n = %d\n', i)
  disp(expo(-5.5, i))
 end;
 
fprintf('\n')
disp('Teilaufgabe b:');

format long;
for i=3:3:30;
  fprintf('n = %d\n', i)
  u = expo(5.5, i);
  disp(1/u);
 end;
 
fprintf('\n') 
disp('Teilaufgabe c:');

format long;
for i=3:3:30;
  fprintf('n = %d\n', i)
  u = expo(-0.5, i);
  disp(u**11);
 end;
 