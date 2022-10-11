{ add_i.pas }

{$IFNDEF FIG_ADD_I}
{$DEFINE FIG_ADD_I}

{$I add_i_down.pas}
{$I add_i_left.pas}
{$I add_i_right.pas}
{$I add_i_top.pas}

{ Добавляет на матрицу фигуру I. }
function figAddI(
  var matrix: TMatrix;
  var orientation: TOrientation;
  var position: TPosition): boolean;
begin
  case orientation of
    Down:  figAddI := figAddIDown(matrix, position);
    Left:  figAddI := figAddILeft(matrix, position);
    Top:   figAddI := figAddITop(matrix, position);
    Right: figAddI := figAddIRight(matrix, position);
  end;
end;

{$ENDIF}
