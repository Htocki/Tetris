{ initialize.pas }

program Initialize;
uses
  UField, UMatrix, UTest;
var
  etalon, matrix: TMatrix;
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
  fieInitialize(matrix);
  tesMessage('field', 'initialize', matIsEqual(etalon, matrix));
end.
