{ deactivate.pas }

program Deactivate;
uses UFigure, UMatrix, UTest;
var
  before, after: TMatrix;
begin
  matInitialize(before, 5, 10);
  matInitialize(after, 5, 10);
  before[0, 0] := 1;
  before[3, 3] := 3;
  before[0, 9] := 2;
  before[1, 9] := 2;
  before[2, 9] := 2;
  before[3, 9] := 2;
  before[1, 1] := 3;
  before[1, 2] := 3;
  before[1, 3] := 3;
  before[2, 2] := 3;
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
  figDeactivate(after);
  tesMessage('figure', 'deactivate', matIsEqual(before, after));
end.
