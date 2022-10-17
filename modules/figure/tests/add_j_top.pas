{ add_j_top.pas }

program AddJTop;
uses
  UFigure, UMatrix, UElement, UTest;
var
  matrix: TMatrix;
  position: TPosition;
  result: boolean;
  {$I ../implementation/add_j_top.pas}
begin
  { Проверка ситуации, когда фигура выходит за границы игровой области. }
  matInitialize(matrix, 7, 11);
  position.x := 0;
  position.y := 8;
  result := (figAddJTop(matrix, position) = false) and
            (matrix[1, 8] = 0) and { Проверка расположения фигуры. }
            (matrix[1, 9] = 0) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда место под фигуру занято. }
  matClear(matrix);
  position.x := 3;
  position.y := 7;
  matrix[3, 9] := 3;
  matrix[4, 9] := 3;
  result := result and
            (figAddJTop(matrix, position) = false) and
            (matrix[4, 7] = 0) and { Проверка расположения фигуры. }
            (matrix[4, 8] = 0) and
            (matrix[3, 9] = 3) and
            (matrix[4, 9] = 3) and
            (matrix[0, 10] = 0) and { Проверка формы фигуры. }
            (matrix[1, 10] = 0) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 0) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 0);
  { Проверка ситуации, когда все в порядке. }
  matClear(matrix);
  position.x := 1;
  position.y := 5;
  result := result and 
            (figAddJTop(matrix, position) = true) and
            (matrix[2, 5] = 2) and { Проверка расположения фигуры. }
            (matrix[2, 6] = 2) and
            (matrix[1, 7] = 2) and
            (matrix[2, 7] = 2) and
            (matrix[0, 10] = 1) and { Проверка формы фигуры. }
            (matrix[1, 10] = 3) and { Проверка ориентации фигуры. }
            (matrix[2, 10] = 1) and { Проверка местоположения фигуры. }
            (matrix[3, 10] = 5);
  tesMessage('figure', 'add_j_top', result);
end.
