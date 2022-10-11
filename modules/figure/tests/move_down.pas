{ move_down.pas }

program MoveDown;
uses
  UFigure, UMatrix, UTest;
var
  before, after: TMatrix;
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
  after[2, 1] := 2;
  after[2, 2] := 2;
  after[3, 2] := 2;
  after[3, 3] := 2;
  after[0, 10] := 4;
  after[1, 10] := 2;
  after[2, 10] := 2;
  after[3, 10] := 1;
  figMoveDown(after);
  tesMessage('figure', 'move_down', matIsEqual(before, after));
end.
