{ add_j_down.pas }

{$IFNDEF FIG_ADD_J_DOWN}
{$DEFINE FIG_ADD_J_DOWN}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру J с ориентацией Down. }
function figAddJDown(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x + 1, position.y    ) or
      not eleIsInBorders(matrix, position.x + 2, position.y    ) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 1) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 2) then
  begin
    figAddJDown := false;
    exit;
  end;
  { Если пространство под фигуру занято. }
  if  not eleIsEmpty(matrix, position.x + 1, position.y    ) or
      not eleIsEmpty(matrix, position.x + 2, position.y    ) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 1) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 2) then
  begin
    figAddJDown := false;
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x + 1, position.y    ] := 2;
  matrix[position.x + 2, position.y    ] := 2;
  matrix[position.x + 1, position.y + 1] := 2;
  matrix[position.x + 1, position.y + 2] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, J);
  figWriteOrientation(matrix, Down);
  figWritePosition(matrix, position);
  figAddJDown := true;
end;

{$ENDIF}
