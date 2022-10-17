{ delete.pas }

program Delete;
uses
  UMatrix, UTest;
var
  etalon, matrix: TMatrix;
  {$I ../implementation/delete.pas}
begin
  matInitialize(etalon, 5, 10);
  matInitialize(matrix, 5, 10);
  etalon[0, 0] := 1;
  etalon[3, 3] := 3;
  etalon[0, 9] := 2;
  etalon[1, 9] := 2;
  etalon[2, 9] := 2;
  etalon[3, 9] := 2;
  matrix[0, 0] := 1;
  matrix[3, 3] := 3;
  matrix[0, 9] := 2;
  matrix[1, 9] := 2;
  matrix[2, 9] := 2;
  matrix[3, 9] := 2;
  matrix[1, 1] := 2;
  matrix[1, 2] := 2;
  matrix[1, 3] := 2;
  matrix[2, 2] := 2;
  figDelete(matrix);
  tesMessage('figure', 'delete', matIsEqual(etalon, matrix));
end.
