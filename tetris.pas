{ tetris.pas }

program Tetris;
uses crt, field, figure, matrix;
type
  TKey = (Up, Down, Left, Right, Enter, Escape, Space, NonPressed);
  TGameState = (Paused, Runned, Finished);

{$I view/console_render.pas}
{$I controller/handle_input.pas}
{$I model/update.pas}

const
  width = 24;
  height = 30;
var
  key: TKey;
  state, display: TMatrix;
  game_state: TGameState;
begin
  key := NonPressed;
  game_state := Runned;
  fieAdd(state, width, height);
  while true do begin
    HandleInput(key);
    Update(state, game_state, key);
    fieGetDisplayArea(state, display);
    ConsoleRender(state);
    Delay(116);
  end
end.
