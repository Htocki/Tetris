{ Копирует в матрицу отображения ту часть матрицы состояния, которая не
  строки используемые для генерации новой фигуры. }
procedure GetDisplayMatrix(var state: TMatrix; var display: TMatrix);
const
  figure_generation_area_height = 4;
var
  i, j, w, h: integer;
begin
  w := Length(state);
  h := Length(state[0]) - figure_generation_area_height;
  SetLength(display, w, h);
  for i := 0 to w - 1 do
    for j := 0 to h - 1 do
      display[i, j] := state[i, j + figure_generation_area_height];
end;
