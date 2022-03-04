{ tetris.pas }
program Tetris;
uses crt, field, figure, matrix;
type
  TKey = (Up, Down, Left, Right, Escape, Space, NonPressed);

{$I view/console_render.pas}
{$I controller/handle_input.pas}
{$I model/update.pas}

const
  width = 24;
  height = 30;
var
  key: TKey;
  state, display: TMatrix;
begin
  key := NonPressed;
  fieAdd(state, width, height);
  while true do begin
    HandleInput(key);
    Update(state, key);
    fieGetDisplayArea(state, display);
    ConsoleRender(state);
    Delay(116);
  end
end.
