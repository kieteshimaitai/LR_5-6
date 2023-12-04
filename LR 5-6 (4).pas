program zad4;
var a,b:array[1..30] of integer;
k,c,i: integer;
begin
  c:=1;
  k:= 1;
  for i:= 1 to 30 do
    begin
    a[i]:= Random(-99,67);
    if (a[i] mod 2 = 0) and (a[i]<>0) then
     begin
       b[c]:=a[i];
       c:=c+1;
     end;
    end;
  for i:= 1 to 30 do
    write(a[i], ' ');
  writeln('');
  for k:= 1 to c-1 do
    write(b[k], ' ');
end.