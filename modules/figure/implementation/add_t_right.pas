{ add_t_right.pas }

{$IFNDEF FIG_ADD_T_RIGHT}
{$DEFINE FIG_ADD_T_RIGHT}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру T с ориентацией Right. }
function figAddTRight(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x,     position.y    ) or
      not eleIsInBorders(matrix, position.x,     position.y + 1) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 1) or
      not eleIsInBorders(matrix, position.x,     position.y + 2) then
  begin
    figAddTRight := false;  
    exit;
  end;
  { Если пространство под фигуру занято. }
  if  not eleIsEmpty(matrix, position.x,     position.y    ) or
      not eleIsEmpty(matrix, position.x,     position.y + 1) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 1) or
      not eleIsEmpty(matrix, position.x,     position.y + 2) then
  begin
    figAddTRight := false;  
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x,     position.y    ] := 2;
  matrix[position.x,     position.y + 1] := 2;
  matrix[position.x + 1, position.y + 1] := 2;
  matrix[position.x,     position.y + 2] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, T);
  figWriteOrientation(matrix, Right);
  figWritePosition(matrix, position);
  figAddTRight := true;
end;

{$ENDIF}
