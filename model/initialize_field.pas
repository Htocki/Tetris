{ Заполняет матрицу состояния. Нулями обозначена пустая область. Единицами
  очерчена граница игровой области. Двойками выделена активная на данный
  момент фигура. }
procedure InitializeField(var state: TMatrix; width, height: integer);
const
  figure_generation_area_height = 4;
var
  i, j, all_height: integer;
begin
  all_height := height + figure_generation_area_height;
  SetLength(state, width, all_height);
  { Заполнение всей матрицы состояния нулями. }
  for i := 0 to width - 1 do
    for j := 0 to all_height - 1 do
      state[i, j] := 0;
  { Добавление нижней границы карты. }
  for i := 0 to width - 1 do
    state[i, all_height - 1] := 1;
  { Добавление боковых границ карты. }
  for j := figure_generation_area_height to all_height - 2 do begin
    state[0, j] := 1;
    state[width - 1, j] := 1;
  end
end;
