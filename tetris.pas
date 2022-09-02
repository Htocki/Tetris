{ tetris.pas }

program Tetris;
uses crt, SysUtils, DateUtils, UConsole, UKey, UKeyboard, UMatrix, UModel, UState, UUser;  
var
  key: TKey;
  matrix, rendering_area: TMatrix;
  state: TState;
  user: TUser;
  start: TDateTime;
begin;
  // Инициализация сущностей значениями по-умолчанию
  keyDefaultInitialize(key);
  useDefaultInitialize(user);
  modDefaultInitialize(matrix, state);
  // Главный цикл
  while true do begin
    start := Now;
    keyHandleInput(key);
    modUpdate(matrix, state, key, user);
    modGetRenderingArea(matrix, rendering_area);
    conRender(rendering_area, state, user);
    Delay(116 - MilliSecondsBetween(start, Now));
  end
end.
