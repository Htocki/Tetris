{ add_j_right.pas }

{$IFNDEF FIG_ADD_J_RIGHT}
{$DEFINE FIG_ADD_J_RIGHT}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру J с ориентацией Right. }
function figAddJRight(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x,     position.y    ) or
      not eleIsInBorders(matrix, position.x,     position.y + 1) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 1) or
      not eleIsInBorders(matrix, position.x + 2, position.y + 1) then
  begin
    figAddJRight := false;
    exit;
  end;
  { Если пространство под фигуру занято. }
  if  not eleIsEmpty(matrix, position.x,     position.y    ) or
      not eleIsEmpty(matrix, position.x,     position.y + 1) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 1) or
      not eleIsEmpty(matrix, position.x + 2, position.y + 1) then
  begin
    figAddJRight := false;
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x,     position.y    ] := 2;
  matrix[position.x,     position.y + 1] := 2;
  matrix[position.x + 1, position.y + 1] := 2;
  matrix[position.x + 2, position.y + 1] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, J);
  figWriteOrientation(matrix, Right);
  figWritePosition(matrix, position);
  figAddJRight := true;
end;

{$ENDIF}
