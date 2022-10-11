{ clear.pas }

program Clear;
uses UMatrix, UTest;
var
  before, after: TMatrix;
begin
  matInitialize(before, 5, 5);
  matInitialize(after, 5, 5);
  matClear(before);
  tesMessage('matrix', 'clear', matIsEqual(before, after));
end.
