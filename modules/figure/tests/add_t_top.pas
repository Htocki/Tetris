{ add_t_top.pas }

program AddTTop;
uses UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_t_top.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 5;
  position.y := 4;
  result := (figAddTTop(matrix, position) = false) and
            (matrix[5, 6] = 0) and { Проверка расположения фигуры. }
            (matrix[6, 6] = 0) and
            (matrix[6, 5] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 4;
  position.y := 1;
  matrix[6, 3] := 3;
  result := result and
            (figAddTTop(matrix, position) = false) and
            (matrix[4, 3] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 3] = 0) and
            (matrix[5, 2] = 0) and
            (matrix[6, 3] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 3;
  position.y := 5;
  result := result and
            (figAddTTop(matrix, position) = true) and
            (matrix[3, 7] = 2) and { Проверка расположения фигуры. }
            (matrix[4, 7] = 2) and
            (matrix[5, 7] = 2) and
            (matrix[4, 6] = 2) and
            (matrix[0, 10] = 5) and { Проверка формы фигуры. }
            (matrix[1, 10] = 3) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 3) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 5);
  tesMessage('figure', 'add_t_top', result);
end.
