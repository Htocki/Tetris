{ initialize.pas }

program Initialize;
uses
  UFigure, UMatrix, UTest;
var
  before, after: TMatrix;
  position: TPosition;
begin
  matInitialize(before, 7, 11);
  matInitialize(after, 7, 11);
  before[2, 2] := 2;
  before[2, 3] := 2;
  before[3, 3] := 2;
  before[3, 4] := 2;
  before[0, 10] := 4;
  before[1, 10] := 2;
  before[2, 10] := 2;
  before[3, 10] := 2;
  position.x := 2;
  position.y := 2;
  figInitialize(after, S, Right, position);
  tesMessage('figure', 'initialize', matIsEqual(before, before));
end.
