{ is_equal.pas }

program IsEqual;
uses
  UMatrix, UTest;
var
  etalon, matrix: TMatrix;
begin
  SetLength(etalon, 5, 5);
  SetLength(matrix, 5, 5);
  matFill(etalon, 5);
  matFill(matrix, 5);
  tesMessage('matrix', 'is_equal', matIsEqual(etalon, matrix));
end.
