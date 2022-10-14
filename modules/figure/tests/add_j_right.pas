{ add_j_right.pas }

program AddJRight;
uses
  UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_j_right.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 5;
  position.y := 4;
  result := (figAddJRight(matrix, position) = false) and
            (matrix[5, 4] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 5] = 0) and
            (matrix[6, 5] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  matrix[6, 7] := 3;
  position.x := 4;
  position.y := 6;
  result := result and
            (figAddJRight(matrix, position) = false) and
            (matrix[4, 6] = 0) and{ Проверка расположения фигуры. }
            (matrix[4, 7] = 0) and
            (matrix[5, 7] = 0) and
            (matrix[6, 7] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 3;
  position.y := 4;
  result := result and
            (figAddJRight(matrix, position) = true) and
            (matrix[3, 4] = 2) and { Проверка расположения фигуры. }
            (matrix[3, 5] = 2) and
            (matrix[4, 5] = 2) and
            (matrix[5, 5] = 2) and
            (matrix[0, 10] = 1) and { Проверка формы фигуры. }
            (matrix[1, 10] = 2) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 3) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 4);
  tesMessage('figure', 'add_j_right', result);
end.
