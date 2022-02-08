program Tetris;
uses crt;
type
  TKey = (Up, Down, Left, Right, Escape, Space);
  TState = array of array of integer;

{ Генерирует 7 значений от 1 до 7, соответстующих фигурам следующим образом:
   0 - фигура J
   1 - фигура I
   2 - фигура O
   3 - фигура L
   4 - фигура Z
   5 - фигура T
   6 - фигура S }
function GenerateFigureNumber(): integer;
begin
  GenerateFigureNumber := random(7);
end;

{ Заполняет матрицу состояния. Нулями обозначена пустая область. Единицами
  очерчена граница игровой области. Двойками выделена активная на данный
  момент фигура. }
procedure InitializeField(var s: TState; width, height: integer);
var
  i, j: integer;
begin
  SetLength(s, width, height);

  for i := 0 to width - 1 do
    for j := 0 to height - 1 do
      s[i, j] := 0;
  
  for i := 0 to width - 1 do begin
    s[i, 0] := 1;
    s[i, height - 1] := 1;
  end;
  
  for j := 0 to height - 1 do begin
    s[0, j] := 1;
    s[width - 1, j] := 1;
  end
end;

{ Ковертирует матрицу состояния в графическое представление и отображает его
  по центру консоли. }
procedure Print(var s: TState);
var
  i, j, w, h: integer;
  indent_x, indent_y: integer;
begin
  ClrScr;
  w := Length(s);
  h := Length(s[0]);
  indent_x := 1 + ScreenWidth div 2 - w div 2;
  indent_y := 1 + ScreenHeight div 2 - h div 2;
  for i := 0 to w - 1 do
    for j := 0 to h - 1 do begin
      GotoXY(i + indent_x, j + indent_y);
      if s[i, j] = 1 then begin
        TextColor(Red);
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
procedure Update(s: TState; k: TKey);
begin
  case k of
    Left: begin
      delay(500);
    end;
    Right: begin
      delay(500);
    end;
    Up: begin
      delay(500);
    end;
    Down: begin
      delay(500);
    end;
    Space: begin
      delay(500);
    end;
    Escape: begin
      writeln('Escape');
      halt;
    end;
  end
end;

const
  width = 50;
  height = 40;
var
  k: TKey;
  s: TState;
begin
  InitializeField(s, width, height);
  while true do begin
    if KeyPressed then
      k := HandleInput();
    Update(s, k);
    Print(s); 
  end
end.
