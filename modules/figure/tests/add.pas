{ add.pas }

program Add;
uses
  UElement, UFigure, UMatrix, UTest;
var
  etalon, matrix: TMatrix;
  position: TPosition;
  {$I ../implementation/add.pas}
begin
  matInitialize(etalon, 7, 11);
  matInitialize(matrix, 7, 11);
  etalon[2, 2] := 2;
  etalon[2, 3] := 2;
  etalon[3, 3] := 2;
  etalon[3, 4] := 2;
  etalon[0, 10] := 4;
  etalon[1, 10] := 2;
  etalon[2, 10] := 2;
  etalon[3, 10] := 2;
  position.x := 2;
  position.y := 2;
  figAdd(matrix, S, Right, position);
  tesMessage('figure', 'add', matIsEqual(etalon, matrix));
end.
