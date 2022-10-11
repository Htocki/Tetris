{ tetris.pas }

program Tetris;
uses crt, SysUtils, DateUtils, UConsole, UFigure, UKey,
     UKeyboard, UMatrix, UModel, UState, UUser;  
var
  figure: TFigure;
  key: TKey;
  matrix, rendering_area: TMatrix;
  state: TState;
  user: TUser;
  start: TDateTime;
begin;
  { Инициализация сущностей значениями по-умолчанию }
  keyInitialize(key);
  useInitialize(user);
  modInitialize(matrix, figure, state);
  { Главный цикл }
  while true do begin
    start := Now;
    { Обработка нажатий клавиш }
    keyHandleInput(key);
    { Озменение состояния модели }
    modUpdate(matrix, figure, state, key, user);
    { Отображение состояния модели }
    modGetRenderingArea(matrix, rendering_area);
    conRender(rendering_area, state, user);
    { Простой системы }
    Delay(116 - MilliSecondsBetween(start, Now));
  end
end.
