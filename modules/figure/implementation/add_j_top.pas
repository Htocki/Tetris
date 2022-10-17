{ add_j_top.pas }

{$IFNDEF FIG_ADD_J_TOP}
{$DEFINE FIG_ADD_J_TOP}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру J с ориентацией Top. }
function figAddJTop(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x + 1, position.y    ) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 1) or
      not eleIsInBorders(matrix, position.x,     position.y + 2) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 2) then
  begin
    figAddJTop := false;
    exit;
  end;
  { Если пространство под фигуру занято. }
  if  not eleIsEmpty(matrix, position.x + 1, position.y    ) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 1) or
      not eleIsEmpty(matrix, position.x,     position.y + 2) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 2) then
  begin
    figAddJTop := false;
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x + 1, position.y    ] := 2;
  matrix[position.x + 1, position.y + 1] := 2;
  matrix[position.x,     position.y + 2] := 2;
  matrix[position.x + 1, position.y + 2] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, J);
  figWriteOrientation(matrix, Top);
  figWritePosition(matrix, position);
  figAddJTop := true;
end;

{$ENDIF}
