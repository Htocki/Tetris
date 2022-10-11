{ add_j_left.pas }

program AddJLeft;
uses UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_j_left.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 2;
  position.y := 8;
  result := (figAddJLeft(matrix, position) = false) and
            (matrix[2, 9] = 0) and { Проверка расположения фигуры. }
            (matrix[3, 9] = 0) and
            (matrix[4, 9] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  matrix[0, 6] := 3;
  position.x := 0;
  position.y := 5;
  result := result and
            (figAddJLeft(matrix, position) = false) and
            (matrix[2, 7] = 0) and { Проверка расположения фигуры. }
            (matrix[1, 6] = 0) and
            (matrix[2, 6] = 0) and
            (matrix[0, 6] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 1;
  position.y := 2;
  result := result and
            (figAddJLeft(matrix, position) = true) and
            (matrix[1, 3] = 2) and { Проверка расположения фигуры. }
            (matrix[2, 3] = 2) and
            (matrix[3, 3] = 2) and
            (matrix[3, 4] = 2) and
            (matrix[0, 10] = 1) and { Проверка формы фигуры. }
            (matrix[1, 10] = 1) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 1) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 2);
  tesMessage('figure', 'add_j_left', result);
end.
