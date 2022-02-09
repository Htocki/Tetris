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
