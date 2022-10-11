{ add_l.pas }

{$IFNDEF FIG_ADD_L}
{$DEFINE FIG_ADD_L}

{$I add_l_down.pas}
{$I add_l_left.pas}
{$I add_l_right.pas}
{$I add_l_top.pas}

{ Добавляет на матрицу фигуру L. }
function figAddL(
  var matrix: TMatrix;
  var orientation: TOrientation;
  var position: TPosition): boolean;
begin
  case orientation of
    Down:  figAddL := figAddLDown(matrix, position);
    Left:  figAddL := figAddLLeft(matrix, position);
    Top:   figAddL := figAddLTop(matrix, position);
    Right: figAddL := figAddLRight(matrix, position);
  end;
end;

{$ENDIF}
