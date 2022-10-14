{ initialize.pas }

program Initialize;
uses
  UTarget, UMatrix, UTest;
var
  etalon, matrix: TMatrix;
begin
  matInitialize(etalon, 7, 11);
  matInitialize(matrix, 7, 11);
  { Границы. }
  etalon[0, 4] := 1;
  etalon[0, 5] := 1;
  etalon[0, 6] := 1;
  etalon[0, 7] := 1;
  etalon[0, 8] := 1;
  etalon[0, 9] := 1;
  etalon[1, 9] := 1;
  etalon[2, 9] := 1;
  etalon[3, 9] := 1;
  etalon[4, 9] := 1;
  etalon[5, 9] := 1;
  etalon[6, 4] := 1;
  etalon[6, 5] := 1;
  etalon[6, 6] := 1;
  etalon[6, 7] := 1;
  etalon[6, 8] := 1;
  etalon[6, 9] := 1;
  { Неактивные фигуры. }
  etalon[1, 7] := 3;
  etalon[1, 8] := 3;
  etalon[2, 8] := 3;
  etalon[3, 6] := 3;
  etalon[3, 7] := 3;
  etalon[3, 8] := 3;
  etalon[5, 8] := 3;
  { Активная фигура. }
  etalon[2, 3] := 2;
  etalon[3, 3] := 2;
  etalon[3, 4] := 2;
  etalon[4, 4] := 2;
  { Мишень. }
  etalon[2, 4] := 4;
  etalon[3, 5] := 4;
  etalon[4, 5] := 4;
  { Границы. }
  matrix[0, 4] := 1;
  matrix[0, 5] := 1;
  matrix[0, 6] := 1;
  matrix[0, 7] := 1;
  matrix[0, 8] := 1;
  matrix[0, 9] := 1;
  matrix[1, 9] := 1;
  matrix[2, 9] := 1;
  matrix[3, 9] := 1;
  matrix[4, 9] := 1;
  matrix[5, 9] := 1;
  matrix[6, 4] := 1;
  matrix[6, 5] := 1;
  matrix[6, 6] := 1;
  matrix[6, 7] := 1;
  matrix[6, 8] := 1;
  matrix[6, 9] := 1;
  { Неактивные фигуры. }
  etalon[1, 7] := 3;
  etalon[1, 8] := 3;
  etalon[2, 8] := 3;
  etalon[3, 6] := 3;
  etalon[3, 7] := 3;
  etalon[3, 8] := 3;
  etalon[5, 8] := 3;
  { Активная фигура. }
  matrix[2, 3] := 2;
  matrix[3, 3] := 2;
  matrix[3, 4] := 2;
  matrix[4, 4] := 2;
  matPrint(etalon);
  matPrint(matrix);
  tarInitialize(matrix);
  matPrint(matrix);
  tesMessage('target', 'initialize', matIsEqual(etalon, matrix));
end.