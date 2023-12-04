program zad9;
var a: array[1..20] of integer;
    i, minInd, PosInd: integer;
    minValue: integer;
begin
  for i := 1 to 20 do
  begin
    a[i] := random(100) - 50;
  end;
  writeln(' ');
  for i := 1 to 20 do
  begin
    write(a[i], ' ');
  end;
  writeln;

  PosInd := 0;
  for i := 1 to 20 do
  begin
    if a[i] > 0 then
    begin
      PosInd := i;
      writeln('Первый положительный элемент ', a[i]);
      break;
    end;
  end;
  if PosInd > 0 then
  begin
    for i := PosInd to 19 do
    begin
      a[i] := a[i+1];
    end;
  end;

  minValue := a[1];
  minInd := 1;
  for i := 2 to 19 do
  begin
    if a[i] < minValue then
    begin
      minValue := a[i];
      minInd := i;
      writeln('Наименьший элемент ', MinValue)
    end;
  end;

  for i := minInd to 19 do
  begin
    a[i] := a[i+1];
  end;

  writeln('Новый массив:');
  for i := 1 to 18 do
  begin
    write(a[i], ' ');
  end;
  writeln;
end.