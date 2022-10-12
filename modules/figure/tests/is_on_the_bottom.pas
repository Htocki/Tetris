{ is_on_the_bottom.pas }

program IsOnTheBottom;
uses
  UFigure, UMatrix, UTest;
var
  matrix: TMatrix;
  result: boolean;
begin
  { Ситуация, при которой под частью нижней границы }
  { расположена граница. }
  matInitialize(matrix, 7, 10);
  matrix[3, 6] := 2;
  matrix[3, 7] := 2;
  matrix[3, 8] := 2;
  matrix[4, 7] := 2;
  matrix[3, 9] := 1;
  result := figIsOnTheBottom(matrix);
  { Ситуация, при которой под частью нижней границы }
  { расположена неактивная фигура. }
  matrix[3, 9] := 3;
  result := result and figIsOnTheBottom(matrix);
  { Ситуация, при которой пространство под нижней границей }
  { фигуры свободно. }
  matrix[3, 9] := 0;
  result := result and (figIsOnTheBottom(matrix) = false);
  tesMessage('figure', 'is_on_the_bottom', result);
end.
