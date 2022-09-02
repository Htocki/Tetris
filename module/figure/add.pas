{ add.pas }

{ Добавляет на матрицу состояния фигуру J. }
procedure AddJ(var matrix: TMatrix);
var
  origin: integer;
begin
  origin := matWidth(matrix) div 2;
  matrix[origin + 1, 1] := 2;
  matrix[origin + 1, 2] := 2;
  matrix[origin + 0, 3] := 2;
  matrix[origin + 1, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру I. }
procedure AddI(var matrix: TMatrix);
var
  origin: integer;
begin
  origin := matWidth(matrix) div 2;
  matrix[origin, 0] := 2;
  matrix[origin, 1] := 2;
  matrix[origin, 2] := 2;
  matrix[origin, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру O. }
procedure AddO(var matrix: TMatrix);
var
  origin: integer;
begin
  origin := matWidth(matrix) div 2;
  matrix[origin,     2] := 2;
  matrix[origin + 1, 2] := 2;
  matrix[origin    , 3] := 2;
  matrix[origin + 1, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру L. }
procedure AddL(var matrix: TMatrix);
var
  origin: integer;
begin
  origin := matWidth(matrix) div 2;  
  matrix[origin,     1] := 2;
  matrix[origin,     2] := 2;
  matrix[origin,     3] := 2;
  matrix[origin + 1, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру Z. }
procedure AddZ(var matrix: TMatrix);
var
  origin: integer;
begin
  origin := matWidth(matrix) div 2;
  matrix[origin,     2] := 2;
  matrix[origin + 1, 2] := 2;
  matrix[origin + 1, 3] := 2;
  matrix[origin + 2, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру T. }
procedure AddT(var matrix: TMatrix);
var
  origin: integer;
begin
  origin := matWidth(matrix) div 2;
  matrix[origin + 1, 2] := 2;
  matrix[origin,     3] := 2;
  matrix[origin + 1, 3] := 2;
  matrix[origin + 2, 3] := 2;
end;

{ Добавляет на матрицу состояния фигуру S. }
procedure AddS(var matrix: TMatrix);
var
  origin: integer;
begin
  origin := matWidth(matrix) div 2;
  matrix[origin + 1, 2] := 2;
  matrix[origin + 2, 2] := 2;
  matrix[origin,     3] := 2;
  matrix[origin + 1, 3] := 2;
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
procedure figAdd(var matrix: TMatrix);
var
  n: integer;
begin
  n := random(7);
  case n of
    0: AddJ(matrix);
    1: AddI(matrix);
    2: AddO(matrix);
    3: AddL(matrix);
    4: AddZ(matrix);
    5: AddT(matrix);
    6: AddS(matrix);
  end;
end;
