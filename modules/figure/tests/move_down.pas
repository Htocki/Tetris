{ move_down.pas }

program MoveDown;
uses
  UFigure, UMatrix, UTest;
var
  etalon, matrix: TMatrix;
begin
  matInitialize(etalon, 7, 11);
  matInitialize(matrix, 7, 11);
  etalon[2, 2] := 2;
  etalon[2, 3] := 2;
  etalon[3, 3] := 2;
  etalon[3, 4] := 2;
  etalon[0, 10] := 4;
  etalon[1, 10] := 2;
  etalon[2, 10] := 2;
  etalon[3, 10] := 2;
  matrix[2, 1] := 2;
  matrix[2, 2] := 2;
  matrix[3, 2] := 2;
  matrix[3, 3] := 2;
  matrix[0, 10] := 4;
  matrix[1, 10] := 2;
  matrix[2, 10] := 2;
  matrix[3, 10] := 1;
  figMoveDown(matrix);
  tesMessage('figure', 'move_down', matIsEqual(etalon, matrix));
end.
