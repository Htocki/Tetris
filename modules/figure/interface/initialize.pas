{ initialize.pas }

{$I ../implementation/add.pas}
{$I ../implementation/default_position.pas}
{$I ../implementation/random_form.pas}
{$I ../implementation/random_orientation.pas}

procedure figInitialize(var matrix: TMatrix);
var
  form: TForm;
  orientation: TOrientation;
  position: TPosition;
begin
  form := figRandomForm();
  orientation := figRandomOrientation();
  position := figDefaultPosition(matrix);
  figAdd(matrix, form, orientation, position);
end;
