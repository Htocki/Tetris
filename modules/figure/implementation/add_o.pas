{ add_o.pas }

{$IFNDEF FIG_ADD_O}
{$DEFINE FIG_ADD_O}

{$I add_o_down.pas}
{$I add_o_left.pas}
{$I add_o_right.pas}
{$I add_o_top.pas}

{ Добавляет на матрицу фигуру O. }
function figAddO(
  var matrix: TMatrix;
  var orientation: TOrientation;
  var position: TPosition): boolean;
begin
  case orientation of
    Down:  figAddO := figAddODown(matrix, position);
    Left:  figAddO := figAddOLeft(matrix, position);
    Top:   figAddO := figAddOTop(matrix, position);
    Right: figAddO := figAddORight(matrix, position);
  end;
end;

{$ENDIF}
