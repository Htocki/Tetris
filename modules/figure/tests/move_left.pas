{ move_left.pas }

program MoveLeft;
uses
  UFigure, UMatrix, UTest;
var
  etalon, matrix: TMatrix;
begin
  matInitialize(etalon, 7, 11);
  matInitialize(matrix, 7, 11);
  etalon[2, 3] := 2;
  etalon[2, 4] := 2;
  etalon[3, 4] := 2;
  etalon[4, 4] := 2;
  etalon[0, 10] := 1;
  etalon[1, 10] := 2;
  etalon[2, 10] := 2;
  etalon[3, 10] := 3;
  matrix[3, 3] := 2;
  matrix[3, 4] := 2;
  matrix[4, 4] := 2;
  matrix[5, 4] := 2;
  matrix[0, 10] := 1;
  matrix[1, 10] := 2;
  matrix[2, 10] := 3;
  matrix[3, 10] := 3;
  figMoveLeft(matrix);
  tesMessage('figure', 'move_left', matIsEqual(etalon, matrix));
end.
