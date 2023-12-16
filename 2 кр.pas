var
  arr: array of Integer;
  n, i, sum: Integer;
begin
  Write('Введите размер массива: ');
  Readln(n);
  SetLength(arr, n);
  WriteLn('Введите элементы массива:');
  for i := 0 to n - 1 do
  begin
    Write('arr[', i, ']: ');
    Readln(arr[i]);
  end;
  sum := 0;
  for i := 0 to n - 1 do
  begin
    if i mod 2 = 0 then
      sum := sum + arr[i];
  end;
  WriteLn('Сумма элементов на четных позициях: ', sum);
end.