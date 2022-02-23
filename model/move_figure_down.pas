{ Копирует исходную матрицу состояния. Затем поэлементно сдвигает в копии все
  значения равниые двойке вниз на одну строку. Если в ходе свига в строке
  под каким-то из значений обнаруживается единица или тройка, то функция
  завершает свою работу, возвращая False. Если же сдвиг прошел успешно, то
  все значения из копии копируются в исходную матрицу состояния и возвращается
  True. }

function MoveDown(var tmp: TMatrix): boolean;
var
  i, j: integer;
begin
  for i := Length(tmp) - 1 downto 0 do
    for j := Length(tmp[0]) - 1 downto 0 do
      if tmp[i, j] = 2 then begin 
        if (tmp[i, j + 1] = 1) or (tmp[i, j + 1] = 3) then begin
          MoveDown := False;
          exit;
        end;
        tmp[i, j + 1] := tmp[i, j];
        if tmp[i, j - 1] = 0 then
          tmp[i, j] := 0;
      end;
  MoveDown := True;
end;

function MoveFigureDown(var state: TMatrix): boolean;
var
  tmp: TMatrix;
begin
  CopyMatrix(state, tmp);
  if MoveDown(tmp) then begin
    CopyMatrix(tmp, state);
    MoveFigureDown := True;
  end else
    MoveFigureDown := False;
end;
