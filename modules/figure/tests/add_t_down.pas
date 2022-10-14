{ add_t_down.pas }

program AddTDown;
uses
  UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_t_down.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 2;
  position.y := 9;
  result := (figAddTDown(matrix, position) = false) and
            (matrix[2, 9] = 0) and { Проверка расположения фигуры. }
            (matrix[3, 9] = 0) and
            (matrix[4, 9] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 4;
  position.y := 5;
  matrix[6, 5] := 3;
  result := result and
            (figAddTDown(matrix, position) = false) and
            (matrix[4, 6] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 5] = 0) and
            (matrix[5, 6] = 0) and
            (matrix[6, 5] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 2;
  position.y := 5;
  result := result and
            (figAddTDown(matrix, position) = true) and
            (matrix[2, 5] = 2) and { Проверка расположения фигуры. }
            (matrix[3, 5] = 2) and
            (matrix[4, 5] = 2) and
            (matrix[3, 6] = 2) and
            (matrix[0, 10] = 5) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 2) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 5);
  tesMessage('figure', 'add_t_down', result);
end.
