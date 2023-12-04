program zad6;
const N = 3;
var a:array[1..N] of integer;
i: integer;
k:integer;
begin 
  for i:= 1 to N do 
    a[i]:= Random (1,4);
    for i:=1 to N do
      write(a[i], ' ');
    for i:= 1 to N - 1 do 
      if a[i] < a[i + 1] then
        k:= k + 1;
      writeln;
        if k = N - 1  then 
          write('Элементы массива упорядочены по возрастанию')
        else 
          write('Элементы массива не упорядочены по возрастанию')
end.