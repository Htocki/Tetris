{ add_z_left.pas }

program AddZLeft;
uses UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_z_left.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 2;
  position.y := 8;
  result := (figAddZLeft(matrix, position) = false) and
            (matrix[4, 8] = 0) and { Проверка расположения фигуры. }
            (matrix[4, 9] = 0) and
            (matrix[3, 9] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 4;
  position.y := 7;
  matrix[5, 9] := 3;
  result := result and
            (figAddZLeft(matrix, position) = false) and
            (matrix[6, 7] = 0) and { Проверка расположения фигуры. }
            (matrix[6, 8] = 0) and
            (matrix[5, 8] = 0) and
            (matrix[5, 9] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 3;
  position.y := 2;
  result := result and
            (figAddZLeft(matrix, position) = true) and
            (matrix[5, 2] = 2) and { Проверка расположения фигуры. }
            (matrix[5, 3] = 2) and
            (matrix[4, 3] = 2) and
            (matrix[4, 4] = 2) and
            (matrix[0, 10] = 6) and { Проверка формы фигуры. }
            (matrix[1, 10] = 1) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 3) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 2);
  tesMessage('figure', 'add_z_left', result);
end.
