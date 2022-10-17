{ add_s_top.pas }

{$IFNDEF FIG_ADD_S_TOP}
{$DEFINE FIG_ADD_S_TOP}

{$I write_form.pas}
{$I write_orientation.pas}
{$I write_position.pas}

{ Добавляет на матрицу состояния фигуру S с ориентацией Top. }
function figAddSTop(var matrix: TMatrix; var position: TPosition): boolean;
begin
  { Если пространство необходимое фигуре выходит }
  { за границы игрового поля. }
  if  not eleIsInBorders(matrix, position.x + 1, position.y + 1) or
      not eleIsInBorders(matrix, position.x + 2, position.y + 1) or
      not eleIsInBorders(matrix, position.x,     position.y + 2) or
      not eleIsInBorders(matrix, position.x + 1, position.y + 2) then
  begin
    figAddSTop := false;
    exit;
  end;
  { Если пространство под фигуру занято. }
  if  not eleIsEmpty(matrix, position.x + 1, position.y + 1) or
      not eleIsEmpty(matrix, position.x + 2, position.y + 1) or
      not eleIsEmpty(matrix, position.x,     position.y + 2) or
      not eleIsEmpty(matrix, position.x + 1, position.y + 2) then
  begin  
    figAddSTop := false;    
    exit;
  end;
  { Добавляем фигуру на матрицу. }
  matrix[position.x + 1, position.y + 1] := 2;
  matrix[position.x + 2, position.y + 1] := 2;
  matrix[position.x,     position.y + 2] := 2;
  matrix[position.x + 1, position.y + 2] := 2;
  { Добавляем информацию о фигуре. }
  figWriteForm(matrix, S);
  figWriteOrientation(matrix, Top);
  figWritePosition(matrix, position);
  figAddSTop := true;
end;

{$ENDIF}
