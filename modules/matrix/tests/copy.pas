{ copy.pas }

program Copy;
uses UMatrix, UTest;
var
  first, second: TMatrix;
begin
  matInitialize(first, 5, 5);
  matCopy(first, second);
  tesMessage('matrix', 'copy', matIsEqual(first, second));
end.
