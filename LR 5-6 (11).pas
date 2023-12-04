program zad11;
const 
  N = 10;
  Elem = 666;

var 
  a: array [1..N+1] of integer;
  K: integer;
  m: integer;

begin
  m:=0;
  for var i:=1 to N do
    a[i] := Random(100);
  writeln('Элементы массива a: ');
  for var i:=1 to N do
    write(a[i],' ');
  writeln;  

  for var i:=1 to N do
    if a[i] mod 2 = 0 then begin
      K := i;
      break;
    end;   
    
   for var i:=1 to N do
    if a[i] mod 2 = 0 then begin
      m := m+1;
    end;
   
   

  for var i:=N downto K do  
    a[i+1] := a[i];
  a[K+1] := m;  
  
  writeln('Массив после вставки элемента ',Elem,' в позицию ',K+1,':');
  for var i:=1 to N+1 do
    write(a[i],' ');
  writeln;  
end.