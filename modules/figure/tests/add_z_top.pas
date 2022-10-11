{ add_z_top.pas }

program AddZTop;
uses UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_z_top.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 5;
  position.y := 1;
  result := (figAddZTop(matrix, position) = false) and
            (matrix[5, 2] = 0) and { Проверка расположения фигуры. }
            (matrix[6, 2] = 0) and
            (matrix[6, 3] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 4;
  position.y := 3;
  matrix[6, 5] := 3;
  result := result and
            (figAddZTop(matrix, position) = false) and
            (matrix[4, 4] = 0) and { Проверка расположения фигуры. }
            (matrix[5, 4] = 0) and
            (matrix[5, 5] = 0) and
            (matrix[6, 5] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 1;
  position.y := 6;
  result := result and
            (figAddZTop(matrix, position) = true) and
            (matrix[1, 7] = 2) and { Проверка расположения фигуры. }
            (matrix[2, 7] = 2) and
            (matrix[2, 8] = 2) and
            (matrix[3, 8] = 2) and
            (matrix[0, 10] = 6) and { Проверка формы фигуры. }
            (matrix[1, 10] = 3) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 1) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 6);
  tesMessage('figure', 'add_z_top', result);
end.
