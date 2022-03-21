{ tetris.pas }

program Tetris;
uses crt, UConsole, UKey, UKeyboard, UMatrix, UModel, UState, UUser;  
var
  key: TKey;
  matrix, rendering_area: TMatrix;
  state: TState;
  user: TUser;
begin;
  modInitialize(matrix, state, key, user);
  while true do begin
    keyHandleInput(key);
    modUpdate(matrix, state, key, user);
    modGetRenderingArea(matrix, rendering_area);
    conRender(rendering_area, state, user);
    Delay(116);
  end
end.
