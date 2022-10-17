{ move_left.pas }

{$I ../implementation/add.pas}
{$I ../implementation/delete.pas}
{$I ../implementation/read_form.pas}
{$I ../implementation/read_orientation.pas}
{$I ../implementation/read_position.pas}

procedure figMoveLeft(var matrix: TMatrix);
var
  tmp: TMatrix;
  form: TForm;
  orientation: TOrientation;
  position: TPosition;
begin
  { Создание копии матрицы. }
  matCopy(matrix, tmp);
  { Сохранение информации о фигуре. }
  form := figReadForm(tmp);
  orientation := figReadOrientation(tmp);
  position := figReadPosition(tmp);
  { Определение новой позиции фигуры. }
  position.x := position.x - 1;
  { Удаление фигуры. }
  figDelete(tmp);
  { Если добавление фигуры на матрицу прошло успешно. }
  if figAdd(tmp, form, orientation, position) then
    { Копирование временной матрицы в исходную. }
    matCopy(tmp, matrix);
end;
