{ delete.pas }

program Delete;
uses UMatrix, UTest;
var
  before, after: TMatrix;
  {$I ../implementation/delete.pas}
begin
  matInitialize(before, 5, 10);
  matInitialize(after, 5, 10);
  before[0, 0] := 1;
  before[3, 3] := 3;
  before[0, 9] := 2;
  before[1, 9] := 2;
  before[2, 9] := 2;
  before[3, 9] := 2;
  after[0, 0] := 1;
  after[3, 3] := 3;
  after[0, 9] := 2;
  after[1, 9] := 2;
  after[2, 9] := 2;
  after[3, 9] := 2;
  after[1, 1] := 2;
  after[1, 2] := 2;
  after[1, 3] := 2;
  after[2, 2] := 2;
  figDelete(after);
  tesMessage('figure', 'delete', matIsEqual(before, after));
end.
