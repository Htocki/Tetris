{ is_equal.pas }

program IsEqual;
uses UMatrix, UTest;
var
  first, second: TMatrix;
begin
  SetLength(first, 5, 5);
  SetLength(second, 5, 5);
  matFill(first, 5);
  matFill(second, 5);
  tesMessage('matrix', 'is_equal', matIsEqual(first, second));
end.
