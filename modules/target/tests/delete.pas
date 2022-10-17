{ delete.pas }

program Delete;
uses
  UTarget, UMatrix, UTest;
var
  etalon, matrix: TMatrix;
begin
  matInitialize(etalon, 7, 10);
  matInitialize(matrix, 7, 10);
  etalon[3, 9] := 1;
  matrix[3, 9] := 1;
  matrix[2, 5] := 4;
  matrix[3, 5] := 4;
  matrix[4, 5] := 4;
  matrix[3, 6] := 4;
  tarDelete(matrix);
  tesMessage('target', 'delete', matIsEqual(etalon, matrix));
end.
