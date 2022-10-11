{ initialize.pas }

{$I ../implementation/add.pas}

procedure figInitialize(
  var matrix: TMatrix;
  form: TForm;
  orientation: TOrientation;
  var position: TPosition);
begin
  figAdd(matrix, form, orientation, position);
end;
