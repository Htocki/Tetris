{ tetris.pas }

program Tetris;
uses crt, UConsole, UKey, UKeyboard, UMatrix, UModel, UState;  

var
  key: TKey;
  matrix, rendering_area: TMatrix;
  state: TState;
begin;
  modInitialize(matrix, state, key);
  while true do begin
    keyHandleInput(key);
    modUpdate(matrix, state, key);
    modGetRenderingArea(matrix, rendering_area);
    conRender(matrix, state);
    Delay(116);
  end
end.
