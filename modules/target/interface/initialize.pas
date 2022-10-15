{ initialize.pas }

{$I ../implementation/move_down.pas}

procedure tarInitialize(var matrix: TMatrix);
const
  status_area_height: integer = 1;
var
  i, j: integer;
  tmp: TMatrix;
begin
  { Создание копии матрицы. }
  matCopy(matrix, tmp);
  { Замена активной фигуры мишенью. }
  for i := 0 to matWidth(tmp) - 1 do
    for j := 0 to matHeight(tmp) - 1 - status_area_height do
      if eleIsActive(tmp, i, j) then
        tmp[i, j] := 4;
  { Перемещение мишени вниз до нижней границы }
  { игровой области или до нижлежащей неактивной }
  { фигуры. }
  while tarMoveDown(tmp) do ;
  { Копирование мишени из матрицы-копии }
  { на матрицу оригинал, без копирования }
  { частей матрицы, которые перекрывают }
  { активную фигуру. }
  for i := 0 to matWidth(tmp) - 1 do
    for j := 0 to matHeight(tmp) - 1 - status_area_height do
      if eleIsTarget(tmp, i, j) and not eleIsActive(matrix, i, j) then
        matrix[i, j] := 4;
end;
