{ add_t_down.pas }

{$IFNDEF FIG_ADD_T_DOWN}
{$DEFINE FIG_ADD_T_DOWN}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру T с ориентацией Down. }
function figAddTDown(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x,     position.y    ) or
      not eleIsInBorders(matrix, position.x + 1, position.y    ) or
      not eleIsInBorders(matrix, position.x + 2, position.y    ) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 1) then
  begin    
    figAddTDown := false;  
    exit;
  end;
  { Если пространство под фигуру занято. }
  if  not eleIsEmpty(matrix, position.x,     position.y    ) or
      not eleIsEmpty(matrix, position.x + 1, position.y    ) or
      not eleIsEmpty(matrix, position.x + 2, position.y    ) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 1) then
  begin
    figAddTDown := false;      
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x,     position.y    ] := 2;
  matrix[position.x + 1, position.y    ] := 2;
  matrix[position.x + 2, position.y    ] := 2;
  matrix[position.x + 1, position.y + 1] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, T);
  figWriteOrientation(matrix, Down);
  figWritePosition(matrix, position);
  figAddTDown := true;
end;

{$ENDIF}
