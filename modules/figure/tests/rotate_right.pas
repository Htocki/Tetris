{ rotate_right.pas }

program RotateRight;
uses
  UFigure, UMatrix, UTest;
var
  before, after: TMatrix;
begin
  matInitialize(before, 7, 11);
  matInitialize(after, 7, 11);
  before[3, 3] := 2;
  before[3, 4] := 2;
  before[3, 5] := 2;
  before[2, 5] := 2;
  before[0, 10] := 1;
  before[1, 10] := 3;
  before[2, 10] := 2;
  before[3, 10] := 3;
  after[2, 3] := 2;
  after[2, 4] := 2;
  after[3, 4] := 2;
  after[4, 4] := 2;
  after[0, 10] := 1;
  after[1, 10] := 2;
  after[2, 10] := 2;
  after[3, 10] := 3;
  figRotateRight(after);
  matPrint(before);
  matPrint(after);
  tesMessage('figure', 'rotate_right', matIsEqual(before, after));
end.
