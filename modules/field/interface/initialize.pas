{ initialize.pas }

procedure fieInitialize(var matrix: TMatrix; width, height: integer);
var
  i, j: integer;
begin
  matInitialize(matrix, width, height);
  { Добавление нижней границы карты. }
  for i := 0 to width - 1 do
    matrix[i, height - 1] := 1;
  { Добавление боковых границ карты. }
  for j := 4 to height - 2 do begin
    matrix[0, j] := 1;
    matrix[width - 1, j] := 1;
  end;
end;
