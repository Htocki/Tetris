{ shift_down.pas }

function tarShiftDown(var tmp: TMatrix): boolean;
var
  i, j: integer;
begin
  for i := matWidth(tmp) - 1 downto 0 do
    for j := matHeight(tmp) - 1 downto 0 do
      if eleIsTarget(tmp, i, j) then begin
        { Проверка того, является ли следующий элемент }
        { преградой. }
        if eleIsBorder(tmp, i, j + 1) or eleIsInactive(tmp, i, j + 1) then begin
          tarShiftDown := False;
          exit;
        end;
        { Копирование в следующий элемент значения текущего }
        { элемента. }
        tmp[i, j + 1] := tmp[i, j];
        { Создание пустой области за перемещаемой фигурой. }
        if eleIsEmpty(tmp, i, j - 1) or eleIsInactive(tmp, i, j - 1) then
          tmp[i, j] := 0;
      end;
  tarShiftDown := True;
end;
