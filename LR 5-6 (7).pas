program zad7;
const N = 10;
var arr: array[1..N] of Integer;
  i, currLength, maxLength: Integer;
begin
  arr[1] := 1;
  arr[2] := 2;
  arr[3] := 3;
  arr[4] := 13;
  arr[5] := 4;
  arr[6] := 32;
  arr[7] := 5;
  arr[8] := 0;
  arr[9] := -2;
  arr[10] := -1;
  writeln('Ваш массив: ');
  for i := 1 to 10 do
    write(arr[i], ' ');
//max dlina u4astka
  currLength := 1;
  maxLength := 1;

  for i := 2 to N do
  begin
    if arr[i] >= arr[i - 1] then
      currLength := currLength + 1
    else
      currLength := 1;

    if currLength > maxLength then
      maxLength := currLength;
  end;

  writeln;
  writeln('Максимальная длина неубывающего участка: ', maxLength);
end.