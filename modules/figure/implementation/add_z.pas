{ add_z.pas }

{$IFNDEF FIG_ADD_Z}
{$DEFINE FIG_ADD_Z}

{$I add_z_down.pas}
{$I add_z_left.pas}
{$I add_z_right.pas}
{$I add_z_top.pas}

{ Добавляет на матрицу фигуру Z. }
function figAddZ(
  var matrix: TMatrix;
  var orientation: TOrientation;
  var position: TPosition): boolean;
begin
  case orientation of
    Down:  figAddZ := figAddZDown(matrix, position);
    Left:  figAddZ := figAddZLeft(matrix, position);
    Top:   figAddZ := figAddZTop(matrix, position);
    Right: figAddZ := figAddZRight(matrix, position);
  end;
end;

{$ENDIF}
