{ add_z_left.pas}

{$IFNDEF FIG_ADD_Z_LEFT}
{$DEFINE FIG_ADD_Z_LEFT}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру Z с ориентацией Left. }
function figAddZLeft(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x + 2, position.y    ) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 1) or
      not eleIsInBorders(matrix, position.x + 2, position.y + 1) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 2) then
  begin
    figAddZLeft := false;
    exit;
  end;
  { Если пространство под фигуру занято. }
  if  not eleIsEmpty(matrix, position.x + 2, position.y    ) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 1) or
      not eleIsEmpty(matrix, position.x + 2, position.y + 1) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 2) then
  begin
    figAddZLeft := false;
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x + 2, position.y    ] := 2;
  matrix[position.x + 1, position.y + 1] := 2;
  matrix[position.x + 2, position.y + 1] := 2;
  matrix[position.x + 1, position.y + 2] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, Z);
  figWriteOrientation(matrix, Left);
  figWritePosition(matrix, position);
  figAddZLeft := true;
end;

{$ENDIF}
