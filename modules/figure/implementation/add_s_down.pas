{ add_s_down.pas }

{$IFNDEF FIG_ADD_S_DOWN}
{$DEFINE FIG_ADD_S_DOWN}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру S с ориентацией Down. }
function figAddSDown(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x + 1, position.y    ) or
      not eleIsInBorders(matrix, position.x + 2, position.y    ) or
      not eleIsInBorders(matrix, position.x,     position.y + 1) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 1) then
  begin    
    figAddSDown := false;
    exit;
  end;
  { Если пространство под фигуру занято. }
  if  not eleIsEmpty(matrix, position.x + 1, position.y    ) or
      not eleIsEmpty(matrix, position.x + 2, position.y    ) or
      not eleIsEmpty(matrix, position.x,     position.y + 1) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 1) then
  begin  
    figAddSDown := false;
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x + 1, position.y    ] := 2;
  matrix[position.x + 2, position.y    ] := 2;
  matrix[position.x,     position.y + 1] := 2;
  matrix[position.x + 1, position.y + 1] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, S);
  figWriteOrientation(matrix, Down);
  figWritePosition(matrix, position);
  figAddSDown := true;
end;

{$ENDIF}
