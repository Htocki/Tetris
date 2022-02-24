program Tetris;
uses crt;
type
  TKey = (Up, Down, Left, Right, Escape, Space, NonPressed);
  TMatrix = array of array of integer;

{$I utility/copy_matrix.pas}
{$I model/add_figure.pas}
{$I model/initialize_field.pas}
{$I model/get_display_matrix.pas}
{$I model/move_figure_down.pas}
{$I model/move_figure_left.pas}
{$I model/move_figure_right.pas}
{$I model/deactivate_figure.pas}
{$I view/print.pas}
{$I controller/handle_input.pas}
{$I model/update.pas}

const
  width = 50;
  height = 40;
var
  k: TKey;
  s, d: TMatrix;
begin
  InitializeField(s, width, height);
  while true do begin
    if KeyPressed then begin
      k := HandleInput();
      Update(s, k);
    end;
    GetDisplayMatrix(s, d);
    Print(s);
    delay(16); { Чуть больше 60 кадров в секунду. }
  end
end.
