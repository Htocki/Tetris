{ initialize.pas }

program Initialize;
uses
  UField, UMatrix, UTest;
var
  before, after: TMatrix;
begin
  matInitialize(before, 5, 10);
  matInitialize(after, 5, 10);
  before[0, 4] := 1;
  before[0, 5] := 1;
  before[0, 6] := 1;
  before[0, 7] := 1;
  before[0, 8] := 1;
  before[1, 8] := 1;
  before[2, 8] := 1;
  before[3, 8] := 1;
  before[4, 4] := 1;
  before[4, 5] := 1;
  before[4, 6] := 1;
  before[4, 7] := 1;
  before[4, 8] := 1;
  fieInitialize(after);
  tesMessage('field', 'initialize', matIsEqual(before, after));
end.
