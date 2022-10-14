{ clear.pas }

program Clear;
uses UMatrix, UTest;
var
  etalon, matrix: TMatrix;
begin
  matInitialize(etalon, 5, 5);
  matInitialize(matrix, 5, 5);
  matClear(matrix);
  tesMessage('matrix', 'clear', matIsEqual(etalon, matrix));
end.
