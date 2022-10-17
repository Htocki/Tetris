{ initialize.pas }

procedure tarInitialize(var matrix: TMatrix);
const
  status_area_height: integer = 1;
var
  i, j: integer;
  tmp: TMatrix;
begin
  { Удаление мишени из матрицы. }
  tarDelete(matrix);
  { Создание копии матрицы. }
  matCopy(matrix, tmp);
  { Перемещение фигуры к нижней границе матрицы-копии. }
  figMoveToTheBottom(tmp);
  { Замена фигуры на матрице-копии мишенью. }
  for i := 1 to matWidth(tmp) - 2 do
    for j := 0 to matHeight(tmp) - 2 - status_area_height do
      if eleIsActive(tmp, i, j) then
        tmp[i, j] := 4;
  { Копирование мишени из матрицы-копии в матрицу-оригинал. }
  for i := 1 to matWidth(tmp) - 2 do
    for j := 0 to matHeight(tmp) - 2 - status_area_height do
      if eleIsTarget(tmp, i, j) and eleIsEmpty(matrix, i, j) then
        matrix[i, j] := tmp[i, j];
end;
