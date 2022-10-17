{ rotate_right.pas }

{$I ../implementation/add.pas}
{$I ../implementation/delete.pas}
{$I ../implementation/next_orientation.pas}
{$I ../implementation/read_form.pas}
{$I ../implementation/read_orientation.pas}
{$I ../implementation/read_position.pas}

procedure figRotateRight(var matrix: TMatrix);
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
  { Определение следующей ориентации фигуры. }
  orientation := figNextOrientation(orientation);
  { Удаление фигуры. }
  figDelete(tmp);
  { Если добавление фигуры на матрицу прошло успешно. }
  if figAdd(tmp, form, orientation, position) then
    { Копирование временной матрицы в исходную. }
    matCopy(tmp, matrix);
end;
