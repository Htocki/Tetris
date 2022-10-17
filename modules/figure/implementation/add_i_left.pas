{ add_i_left.pas }

{$IFNDEF FIG_ADD_I_LEFT}
{$DEFINE FIG_ADD_I_LEFT}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру I с ориентацией Left. }
function figAddILeft(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x,     position.y + 2) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 2) or
      not eleIsInBorders(matrix, position.x + 2, position.y + 2) or
      not eleIsInBorders(matrix, position.x + 3, position.y + 2) then
  begin
    figAddILeft := false;
    exit;
  end;
  { Если пространство под фигуру занято. }
  if  not eleIsEmpty(matrix, position.x,     position.y + 2) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 2) or
      not eleIsEmpty(matrix, position.x + 2, position.y + 2) or
      not eleIsEmpty(matrix, position.x + 3, position.y + 2) then
  begin
    figAddILeft := false;
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x,     position.y + 2] := 2;
  matrix[position.x + 1, position.y + 2] := 2;
  matrix[position.x + 2, position.y + 2] := 2;
  matrix[position.x + 3, position.y + 2] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, I);
  figWriteOrientation(matrix, Left);
  figWritePosition(matrix, position);
  figAddILeft := true;
end;

{$ENDIF}
