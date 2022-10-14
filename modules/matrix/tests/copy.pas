{ copy.pas }

program Copy;
uses UMatrix, UTest;
var
  etalon, matrix: TMatrix;
begin
  matInitialize(etalon, 5, 5);
  matCopy(etalon, matrix);
  tesMessage('matrix', 'copy', matIsEqual(etalon, matrix));
end.
