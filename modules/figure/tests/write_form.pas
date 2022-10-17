{ write_form.pas }

program WriteForm;
uses
  UFigure, UMatrix, UTest;
var
  matrix: TMatrix;
  form: TForm;
  result: boolean;
  {$I ../implementation/write_form.pas}
begin
  matInitialize(matrix, 5, 10);
  form := I;
  figWriteForm(matrix, form);
  result := matrix[0, 9] = 0;
  form := J;
  figWriteForm(matrix, form);
  result := result and (matrix[0, 9] = 1);
  form := L;
  figWriteForm(matrix, form);
  result := result and (matrix[0, 9] = 2);
  form := O;
  figWriteForm(matrix, form);
  result := result and (matrix[0, 9] = 3);
  form := S;
  figWriteForm(matrix, form);
  result := result and (matrix[0, 9] = 4);
  form := T;
  figWriteForm(matrix, form);
  result := result and (matrix[0, 9] = 5);
  form := Z;
  figWriteForm(matrix, form);
  result := result and (matrix[0, 9] = 6);
  tesMessage('figure', 'write_form', result);
end.
