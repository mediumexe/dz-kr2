var
  str: string;
  wordCount, letterCount, i: Integer;
begin
  WriteLn('Введите строку:');
  ReadLn(str);
  wordCount := 0;
  letterCount := 0;
  while (Length(str) > 0) and (str[1] = ' ') do
    Delete(str, 1, 1);
  while (Length(str) > 0) and (str[Length(str)] = ' ') do
    Delete(str, Length(str), 1);
  for i := 1 to Length(str) do
  begin
    if (str[i] <> ' ') and (str[i] <> ',') and (str[i] <> '.') then
      letterCount := letterCount + 1;
    if (i < Length(str)) and ((str[i] = ' ') or (str[i] = ',') or (str[i] = '.')) and (str[i+1] <> ' ') then
      wordCount := wordCount + 1;
  end;
  if Length(str) > 0 then
    wordCount := wordCount + 1;
  WriteLn('Число слов в строке: ', wordCount);
  WriteLn('Число букв в строке: ', letterCount);
end.