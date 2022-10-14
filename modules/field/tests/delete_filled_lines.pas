{ delete_filled_lines.pas }

program DeleteFilledLines;
uses
  UField, UMatrix, UTest;
var
  etalon, matrix: TMatrix;
  result: boolean;
  count: integer;
begin
  matInitialize(etalon, 5, 10);
  matInitialize(matrix, 5, 10);
  fieInitialize(etalon);
  fieInitialize(matrix);
  etalon[1, 6] := 3;
  etalon[1, 7] := 3;
  matrix[1, 4] := 3;
  matrix[1, 5] := 3;
  matrix[2, 5] := 3;
  matrix[3, 5] := 3;
  matrix[1, 6] := 3;
  matrix[2, 6] := 3;
  matrix[3, 6] := 3;
  matrix[1, 7] := 3;
  count := fieDeleteFilledLines(matrix);
  result := (count = 2) and matIsEqual(etalon, matrix);
  tesMessage('field', 'delete_filled_lines', result);
end.
