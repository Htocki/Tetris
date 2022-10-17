{ read_form.pas }

program ReadForm;
uses
  UFigure, UMatrix, UTest;
var
  matrix: TMatrix;
  form: TForm;
  result: boolean;
  {$I ../implementation/read_form.pas}
begin
  matInitialize(matrix, 5, 10);
  matrix[0, 9] := 0;
  form := figReadForm(matrix);
  result := form = I;
  matrix[0, 9] := 1;
  form := figReadForm(matrix);
  result := result and (form = J);
  matrix[0, 9] := 2;
  form := figReadForm(matrix);
  result := result and (form = L);
  matrix[0, 9] := 3;
  form := figReadForm(matrix);
  result := result and (form = O);
  matrix[0, 9] := 4;
  form := figReadForm(matrix);
  result := result and (form = S);
  matrix[0, 9] := 5;
  form := figReadForm(matrix);
  result := result and (form = T);
  matrix[0, 9] := 6;
  form := figReadForm(matrix);
  result := result and (form = Z);
  tesMessage('figure', 'read_form', result);
end.
