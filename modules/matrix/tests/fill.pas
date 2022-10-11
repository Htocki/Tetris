{ fill.pas }

program Fill;
uses UMatrix, UTest;
var
  first, second: TMatrix;
  i, j: integer;
begin
  matInitialize(first, 5, 5);
  matInitialize(second, 5, 5);
  for i := 0 to matWidth(first) - 1 do
    for j := 0 to matHeight(first) - 1 do
      first[i, j] := 8;
  matFill(second, 8);
  tesMessage('matrix', 'fill', matIsEqual(first, second));
end.
