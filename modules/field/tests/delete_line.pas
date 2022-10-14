{ initialize.pas }

program DeleteLine;
uses
  UField, UMatrix, UTest;
var
  etalon, matrix: TMatrix;
  {$I ../implementation/delete_line.pas}
begin
  matInitialize(etalon, 5, 10);
  matInitialize(matrix, 5, 10);
  etalon[0, 4] := 1;
  etalon[0, 5] := 1;
  etalon[0, 6] := 1;
  etalon[0, 7] := 1;
  etalon[0, 8] := 1;
  etalon[1, 8] := 1;
  etalon[2, 8] := 1;
  etalon[3, 8] := 1;
  etalon[4, 4] := 1;
  etalon[4, 5] := 1;
  etalon[4, 6] := 1;
  etalon[4, 7] := 1;
  etalon[4, 8] := 1;
  etalon[1, 7] := 3;
  etalon[2, 7] := 2;
  etalon[3, 7] := 1;
  matrix[0, 4] := 1;
  matrix[0, 5] := 1;
  matrix[0, 6] := 1;
  matrix[0, 7] := 1;
  matrix[0, 8] := 1;
  matrix[1, 8] := 1;
  matrix[2, 8] := 1;
  matrix[3, 8] := 1;
  matrix[4, 4] := 1;
  matrix[4, 5] := 1;
  matrix[4, 6] := 1;
  matrix[4, 7] := 1;
  matrix[4, 8] := 1;
  matrix[1, 7] := 3;
  matrix[2, 7] := 2;
  matrix[3, 7] := 1;
  matrix[1, 6] := 3;
  matrix[2, 6] := 2;
  matrix[3, 6] := 1;;
  fieDeleteLine(matrix, 7);
  tesMessage('field', 'delete_line', matIsEqual(etalon, matrix));
end.