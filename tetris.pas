program Tetris;
uses crt;
type
  TKey = (Up, Down, Left, Right, Escape, Space, NonPressed);
  TMatrix = array of array of integer;

procedure Clear(state: TMatrix);
var
  i, j: integer;
begin
  for i := 0 to Length(state) - 1 do
    for j := 0 to 3 do
      state[i, j] := 0;
end;

{ Добавляет на матрицу состояния фигуру J. }
procedure AddFigureJ(state: TMatrix);
var
  origin: integer;
begin
  origin := Length(state) div 2;
  state[origin + 1, 1] := 2;
  state[origin + 1, 2] := 2;
  state[origin + 0, 3] := 2;
  state[origin + 1, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру I. }
procedure AddFigureI(state: TMatrix);
var
  origin: integer;
begin
  origin := Length(state) div 2;
  state[origin + 1, 0] := 2;
  state[origin + 1, 1] := 2;
  state[origin + 1, 2] := 2;
  state[origin + 1, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру O. }
procedure AddFigureO(state: TMatrix);
var
  origin: integer;
begin
  origin := Length(state) div 2;
  state[origin,     2] := 2;
  state[origin + 1, 2] := 2;
  state[origin    , 3] := 2;
  state[origin + 1, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру L. }
procedure AddFigureL(state: TMatrix);
var
  origin: integer;
begin
  origin := Length(state) div 2;  
  state[origin,     1] := 2;
  state[origin,     2] := 2;
  state[origin,     3] := 2;
  state[origin + 1, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру Z. }
procedure AddFigureZ(state: TMatrix);
var
  origin: integer;
begin
  origin := Length(state) div 2;
  state[origin,     2] := 2;
  state[origin + 1, 2] := 2;
  state[origin + 1, 3] := 2;
  state[origin + 2, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру T. }
procedure AddFigureT(state: TMatrix);
var
  origin: integer;
begin
  origin := Length(state) div 2;
  state[origin + 1, 2] := 2;
  state[origin,     3] := 2;
  state[origin + 1, 3] := 2;
  state[origin + 2, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру S. }
procedure AddFigureS(state: TMatrix);
var
  origin: integer;
begin
  origin := Length(state[0]) div 2;
  state[origin + 1, 2] := 2;
  state[origin + 2, 2] := 2;
  state[origin,     3] := 2;
  state[origin + 1, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру в соответствии с рандомно
  сгенерированным номером.
   0 - фигура J
   1 - фигура I
   2 - фигура O
   3 - фигура L
   4 - фигура Z
   5 - фигура T
   6 - фигура S }
procedure AddFigure(state: TMatrix);
var
  n: integer;
begin
  n := random(7);
  case n of
    0: AddFigureJ(state);
    1: AddFigureI(state);
    2: AddFigureO(state);
    3: AddFigureL(state);
    4: AddFigureZ(state);
    5: AddFigureT(state);
    6: AddFigureS(state);
  end;
end;

{ Заполняет матрицу состояния. Нулями обозначена пустая область. Единицами
  очерчена граница игровой области. Двойками выделена активная на данный
  момент фигура. }
procedure InitializeField(var state: TMatrix; width, height: integer);
const
  figure_generate_area_height = 4;
var
  i, j, all_height: integer;
begin
  all_height := height + figure_generate_area_height;
  SetLength(state, width, all_height);
  { Заполнение всей матрицы состояния нулями. }
  for i := 0 to width - 1 do
    for j := 0 to all_height - 1 do
      state[i, j] := 0;
  { Добавление нижней границы карты. }
  for i := 0 to width - 1 do
    state[i, all_height - 1] := 1;
  { Добавление боковых границ карты. }
  for j := figure_generate_area_height to all_height - 2 do begin
    state[0, j] := 1;
    state[width - 1, j] := 1;
  end
end;

{ Копирует в матрицу отображения ту часть матрицы состояния, которая не
  строки используемые для генерации новой фигуры. }
procedure FillDisplayMatrix(var state: TMatrix; var display: TMatrix);
begin
end;

{ Ковертирует матрицу состояния в графическое представление и отображает его
  по центру консоли. }
procedure Print(var display: TMatrix);
var
  i, j, w, h: integer;
  indent_x, indent_y: integer;
begin
  ClrScr;
  w := Length(display);
  h := Length(display[0]);
  indent_x := 1 + ScreenWidth div 2 - w div 2;
  indent_y := 1 + ScreenHeight div 2 - h div 2;
  for i := 0 to w - 1 do
    for j := 0 to h - 1 do begin
      GotoXY(i + indent_x, j + indent_y);
      if display[i, j] = 1 then begin
        TextColor(Green);
        Write('H');
      end
      else if display[i, j] = 2 then begin
        TextColor(White);
        Write('H');
      end;
    end;
  GotoXY(1, 1);
end;

{ Считывает символьный код нажатой клавиши, преобразует его в соответстующее
  значение перечисления TKey. }
function HandleInput(): TKey;
var
  ch: char;
begin
  ch := ReadKey;
  case ch of
    #0: begin { Обработка символов с расширенным кодом }
      ch := ReadKey;
      case ch of
        #75: HandleInput := Left;
        #77: HandleInput := Right;
        #72: HandleInput := Up;
        #80: HandleInput := Down;
      end
    end;
    ' ': HandleInput := Space;
    #27: HandleInput := Escape;
  end
end;

{ Обработчик событий }
procedure Update(state: TMatrix; k: TKey);
begin
  case k of
    Left: ;
    Right: ;
    Up: ;
    Down: Clear(state);
    Space: AddFigure(state);
    Escape: halt;
  end
end;

const
  width = 50;
  height = 40;
var
  k: TKey;
  s: TMatrix;
begin
  InitializeField(s, width, height);
  while true do begin
    if KeyPressed then begin
      k := HandleInput();
      Update(s, k);
    end;
    Print(s);
    delay(16); { Чуть больше 60 кадров в секунду. }
  end
end.
