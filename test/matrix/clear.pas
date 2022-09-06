{ clear.pas }

program Clear;
uses UMatrix, UTest;
var
  before, after: TMatrix;
begin
  matDefaultInitialize(before, 5, 5);
  matDefaultInitialize(after, 5, 5);
  matClear(before);
  tesMessage('matrix', 'clear', matIsEqual(before, after));
end.