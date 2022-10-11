{ add_o_down.pas }

{$IFNDEF FIG_ADD_O_DOWN}
{$DEFINE FIG_ADD_O_DOWN}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру O с ориентацией Down. }
function figAddODown(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x,     position.y    ) or
      not eleIsInBorders(matrix, position.x + 1, position.y    ) or
      not eleIsInBorders(matrix, position.x,     position.y + 1) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 1) then
  begin
    figAddODown := false;
    exit;
  end;
  { Если пространство под фигуру занято. }
  if  not eleIsEmpty(matrix, position.x,     position.y    ) or
      not eleIsEmpty(matrix, position.x + 1, position.y    ) or
      not eleIsEmpty(matrix, position.x,     position.y + 1) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 1) then
  begin
    figAddODown := false;
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x,     position.y    ] := 2;
  matrix[position.x + 1, position.y    ] := 2;
  matrix[position.x    , position.y + 1] := 2;
  matrix[position.x + 1, position.y + 1] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, O);
  figWriteOrientation(matrix, Down);
  figWritePosition(matrix, position);
  figAddODown := true;
end;

{$ENDIF}
