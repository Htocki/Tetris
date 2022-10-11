{ add_t_left.pas }

program AddTLeft;
uses UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_t_left.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 5;
  position.y := 2;
  result := (figAddTLeft(matrix, position) = false) and
            (matrix[6, 3] = 0) and { Проверка расположения фигуры. }
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 3;
  position.y := 7;
  matrix[5, 9] := 3;
  result := result and
            (figAddTLeft(matrix, position) = false) and
            (matrix[4, 8] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 8] = 0) and
            (matrix[5, 7] = 0) and
            (matrix[5, 9] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 0;
  position.y := 1;
  result := result and
            (figAddTLeft(matrix, position) = true) and
            (matrix[2, 1] = 2) and { Проверка расположения фигуры. }
            (matrix[1, 2] = 2) and
            (matrix[2, 2] = 2) and
            (matrix[2, 3] = 2) and
            (matrix[0, 10] = 5) and { Проверка формы фигуры. }
            (matrix[1, 10] = 1) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 1);
  tesMessage('figure', 'add_t_left', result);
end.
