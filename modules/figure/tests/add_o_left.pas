{ add_o_left.pas }

program AddOLeft;
uses
  UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_o_left.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 6;
  position.y := 2;
  result := (figAddOLeft(matrix, position) = false) and
            (matrix[6, 2] = 0) and { Проверка расположения фигуры. }
            (matrix[6, 3] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 5;
  position.y := 2;
  matrix[6, 2] := 3;
  matrix[6, 3] := 3;
  result := result and
            (figAddOLeft(matrix, position) = false) and
            (matrix[5, 2] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 3] = 0) and
            (matrix[6, 2] = 3) and
            (matrix[6, 3] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 3;
  position.y := 4;
  result := result and
            (figAddOLeft(matrix, position) = true) and
            (matrix[3, 4] = 2) and { Проверка расположения фигуры. }
            (matrix[4, 4] = 2) and
            (matrix[3, 5] = 2) and
            (matrix[4, 5] = 2) and
            (matrix[0, 10] = 3) and { Проверка формы фигуры. }
            (matrix[1, 10] = 1) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 3) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 4);
  tesMessage('figure', 'add_o_left', result);
end.
