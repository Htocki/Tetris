{ tetris.pas }
program Tetris;
uses crt, field, figure, matrix;
type
  TKey = (Up, Down, Left, Right, Escape, Space, NonPressed);

{$I view/console_render.pas}
{$I controller/handle_input.pas}
{$I model/update.pas}

const
  width = 30;
  height = 30;
var
  key: TKey;
  state, display: TMatrix;
begin
  fieAdd(state, width, height);
  while true do begin
    if KeyPressed then begin
      key := HandleInput();
      UpdateInput(state, key);
    end;
    Update(state);
    fieGetDisplayArea(state, display);
    ConsoleRender(display);
    Delay(116);
  end
end.
