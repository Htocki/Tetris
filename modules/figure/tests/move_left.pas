{ move_left.pas }

program MoveLeft;
uses
  UFigure, UMatrix, UTest;
var
  before, after: TMatrix;
begin
  matInitialize(before, 7, 11);
  matInitialize(after, 7, 11);
  before[2, 3] := 2;
  before[2, 4] := 2;
  before[3, 4] := 2;
  before[4, 4] := 2;
  before[0, 10] := 1;
  before[1, 10] := 2;
  before[2, 10] := 2;
  before[3, 10] := 3;
  after[3, 3] := 2;
  after[3, 4] := 2;
  after[4, 4] := 2;
  after[5, 4] := 2;
  after[0, 10] := 1;
  after[1, 10] := 2;
  after[2, 10] := 3;
  after[3, 10] := 3;
  figMoveLeft(after);
  tesMessage('figure', 'move_left', matIsEqual(before, after));
end.
