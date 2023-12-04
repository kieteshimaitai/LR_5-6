program zad10;
var arr: array[1..20] of Integer;
    i, countNegative: Integer;

begin
  Randomize;
  for i := 1 to 20 do
    arr[i] := random(100) -50; 
  WriteLn('Полученный массив:');
  for i := 1 to 20 do
    Write(arr[i], ' ');
  
  countNegative := 0;
  for i := 1 to 20 do
  begin
    if arr[i] < 0 then
    begin
      arr[i] := 0; 
      Inc(countNegative);
    end;
  end;
  WriteLn;
  WriteLn('Массив после удаления отрицательных элементов:');
  for i := 1 to 20 do
    Write(arr[i], ' ');

  WriteLn;
  WriteLn('Количество удаленных отрицательных элементов: ', countNegative);
end.