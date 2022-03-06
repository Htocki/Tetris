{ add.pas }

{ Добавляет на матрицу состояния фигуру J. }
procedure AddJ(var state: TMatrix);
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
procedure AddI(var state: TMatrix);
var
  origin: integer;
begin
  origin := Length(state) div 2;
  state[origin, 0] := 2;
  state[origin, 1] := 2;
  state[origin, 2] := 2;
  state[origin, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру O. }
procedure AddO(var state: TMatrix);
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
procedure AddL(var state: TMatrix);
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
procedure AddZ(var state: TMatrix);
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
procedure AddT(var state: TMatrix);
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
procedure AddS(var state: TMatrix);
var
  origin: integer;
begin
  origin := Length(state) div 2;
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
procedure figAdd(var state: TMatrix);
var
  n: integer;
begin
  n := random(7);
  case n of
    0: AddJ(state);
    1: AddI(state);
    2: AddO(state);
    3: AddL(state);
    4: AddZ(state);
    5: AddT(state);
    6: AddS(state);
  end;
end;
