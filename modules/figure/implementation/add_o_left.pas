{ add_o_left.pas }

{$IFNDEF FIG_ADD_O_LEFT}
{$DEFINE FIG_ADD_O_LEFT}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру O с ориентацией Left. }
function figAddOLeft(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x,     position.y    ) or
      not eleIsInBorders(matrix, position.x + 1, position.y    ) or
      not eleIsInBorders(matrix, position.x,     position.y + 1) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 1) then
  begin
    figAddOLeft := false;  
    exit;
  end;
  { Если пространство под фигуру занято. }
  if  not eleIsEmpty(matrix, position.x,     position.y    ) or
      not eleIsEmpty(matrix, position.x + 1, position.y    ) or
      not eleIsEmpty(matrix, position.x,     position.y + 1) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 1) then
  begin
    figAddOLeft := false;  
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x,     position.y    ] := 2;
  matrix[position.x + 1, position.y    ] := 2;
  matrix[position.x    , position.y + 1] := 2;
  matrix[position.x + 1, position.y + 1] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, O);
  figWriteOrientation(matrix, Left);
  figWritePosition(matrix, position);
  figAddOLeft := true;
end;

{$ENDIF}
