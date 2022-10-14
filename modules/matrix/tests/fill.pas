{ fill.pas }

program Fill;
uses
  UMatrix, UTest;
var
  etalon, matrix: TMatrix;
  i, j: integer;
begin
  matInitialize(etalon, 5, 5);
  matInitialize(matrix, 5, 5);
  for i := 0 to matWidth(etalon) - 1 do
    for j := 0 to matHeight(etalon) - 1 do
      etalon[i, j] := 8;
  matFill(matrix, 8);
  tesMessage('matrix', 'fill', matIsEqual(etalon, matrix));
end.
