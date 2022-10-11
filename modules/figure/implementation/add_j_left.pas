{ add_j_left.pas }

{$IFNDEF FIG_ADD_J_LEFT}
{$DEFINE FIG_ADD_J_LEFT}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру J с ориентацией Left. }
function figAddJLeft(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x,     position.y + 1) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 1) or
      not eleIsInBorders(matrix, position.x + 2, position.y + 1) or
      not eleIsInBorders(matrix, position.x + 2, position.y + 2) then
  begin
    figAddJLeft := false;
    exit;
  end;
  { Если пространство под фигуру занято. }
  if  not eleIsEmpty(matrix, position.x,     position.y + 1) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 1) or
      not eleIsEmpty(matrix, position.x + 2, position.y + 1) or
      not eleIsEmpty(matrix, position.x + 2, position.y + 2) then
  begin
    figAddJLeft := false;
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x,     position.y + 1] := 2;
  matrix[position.x + 1, position.y + 1] := 2;
  matrix[position.x + 2, position.y + 1] := 2;
  matrix[position.x + 2, position.y + 2] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, J);
  figWriteOrientation(matrix, Left);
  figWritePosition(matrix, position);
  figAddJLeft := true;
end;

{$ENDIF}
