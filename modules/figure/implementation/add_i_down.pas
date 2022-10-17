{ add_i_down.pas }

{$IFNDEF FIG_ADD_I_DOWN}
{$DEFINE FIG_ADD_I_DOWN}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру I с ориентацией Down. }
function figAddIDown(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x + 2, position.y    ) or
      not eleIsInBorders(matrix, position.x + 2, position.y + 1) or
      not eleIsInBorders(matrix, position.x + 2, position.y + 2) or
      not eleIsInBorders(matrix, position.x + 2, position.y + 3) then
  begin
    figAddIDown := false;
    exit;
  end;
  { Если пространство под фигуру занято. }  
  if  not eleIsEmpty(matrix, position.x + 2, position.y    ) or
      not eleIsEmpty(matrix, position.x + 2, position.y + 1) or
      not eleIsEmpty(matrix, position.x + 2, position.y + 2) or
      not eleIsEmpty(matrix, position.x + 2, position.y + 3) then
  begin
    figAddIDown := false;
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x + 2, position.y    ] := 2;
  matrix[position.x + 2, position.y + 1] := 2;
  matrix[position.x + 2, position.y + 2] := 2;
  matrix[position.x + 2, position.y + 3] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, I);
  figWriteOrientation(matrix, Down);
  figWritePosition(matrix, position);
  figAddIDown := true;
end;

{$ENDIF}
