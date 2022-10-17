{ add_s.pas }

{$IFNDEF FIG_ADD_S}
{$DEFINE FIG_ADD_S}

{$I add_s_down.pas}
{$I add_s_left.pas}
{$I add_s_right.pas}
{$I add_s_top.pas}

{ Добавляет на матрицу фигуру S. }
function figAddS(
  var matrix: TMatrix;
  var orientation: TOrientation;
  var position: TPosition): boolean;
begin
  case orientation of
    Down:  figAddS := figAddSDown(matrix, position);
    Left:  figAddS := figAddSLeft(matrix, position);
    Top:   figAddS := figAddSTop(matrix, position);
    Right: figAddS := figAddSRight(matrix, position);
  end;
end;

{$ENDIF}
