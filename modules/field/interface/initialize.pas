{ initialize.pas }

procedure fieInitialize(var matrix: TMatrix);
const
  status_height: integer = 1;
var
  i, j, width, height: integer;
begin
  width := matWidth(matrix);
  height := matHeight(matrix);
  { Добавление нижней границы карты. }
  for i := 0 to width - 1 do
    matrix[i, height - 1 - status_height] := 1;
  { Добавление боковых границ карты. }
  for j := 4 to height - 2 - status_height do begin
    matrix[0, j] := 1;
    matrix[width - 1, j] := 1;
  end;
end;
