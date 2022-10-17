{ add_j_down.pas }

program AddJDown;
uses
  UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_j_down.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 5;
  position.y := 3;
  result := (figAddJDown(matrix, position) = false) and
            (matrix[6, 3] = 0) and { Проверка расположения фигуры. }
            (matrix[6, 4] = 0) and
            (matrix[6, 5] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  matrix[6, 5] := 3;
  position.x := 4;
  position.y := 5;
  result := result and
            (figAddJDown(matrix, position) = false) and
            (matrix[5, 5] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 6] = 0) and
            (matrix[5, 7] = 0) and
            (matrix[6, 5] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 3;
  position.y := 6;
  result := result and
            (figAddJDown(matrix, position) = true) and
            (matrix[4, 6] = 2) and { Проверка расположения фигуры. }
            (matrix[4, 7] = 2) and
            (matrix[4, 8] = 2) and
            (matrix[5, 6] = 2) and
            (matrix[0, 10] = 1) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 3) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 6);
  tesMessage('figure', 'add_j_down', result);
end.
