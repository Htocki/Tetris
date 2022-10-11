{ add_j.pas }

{$IFNDEF FIG_ADD_J}
{$DEFINE FIG_ADD_J}

{$I add_j_down.pas}
{$I add_j_left.pas}
{$I add_j_right.pas}
{$I add_j_top.pas}

{ Добавляет на матрицу фигуру J. }
function figAddJ(
  var matrix: TMatrix;
  var orientation: TOrientation;
  var position: TPosition): boolean;
begin
  case orientation of
    Down:  figAddJ := figAddJDown(matrix, position);
    Left:  figAddJ := figAddJLeft(matrix, position);
    Top:   figAddJ := figAddJTop(matrix, position);
    Right: figAddJ := figAddJRight(matrix, position);
  end;
end;

{$ENDIF}
