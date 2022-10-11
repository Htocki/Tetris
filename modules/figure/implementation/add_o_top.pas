{ add_o_top.pas }

{$IFNDEF FIG_ADD_O_TOP}
{$DEFINE FIG_ADD_O_TOP}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру O с ориентацией Top. }
function figAddOTop(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x,     position.y    ) or
      not eleIsInBorders(matrix, position.x + 1, position.y    ) or
      not eleIsInBorders(matrix, position.x,     position.y + 1) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 1) then
  begin
    figAddOTop := false;  
    exit;
  end;
  { Если пространство под фигуру занято. }
  if  not eleIsEmpty(matrix, position.x,     position.y    ) or
      not eleIsEmpty(matrix, position.x + 1, position.y    ) or
      not eleIsEmpty(matrix, position.x,     position.y + 1) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 1) then
  begin
    figAddOTop := false;  
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x,     position.y    ] := 2;
  matrix[position.x + 1, position.y    ] := 2;
  matrix[position.x    , position.y + 1] := 2;
  matrix[position.x + 1, position.y + 1] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, O);
  figWriteOrientation(matrix, Top);
  figWritePosition(matrix, position);
  figAddOTop := true;
end;

{$ENDIF}
