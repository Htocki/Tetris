{ add_t.pas }

{$IFNDEF FIG_ADD_T}
{$DEFINE FIG_ADD_T}

{$I add_t_down.pas}
{$I add_t_left.pas}
{$I add_t_right.pas}
{$I add_t_top.pas}

{ Добавляет на матрицу фигуру T. }
function figAddT(
  var matrix: TMatrix;
  var orientation: TOrientation;
  var position: TPosition): boolean;
begin
  case orientation of
    Down:  figAddT := figAddTDown(matrix, position);
    Left:  figAddT := figAddTLeft(matrix, position);
    Top:   figAddT := figAddTTop(matrix, position);
    Right: figAddT := figAddTRight(matrix, position);
  end;
end;

{$ENDIF}
