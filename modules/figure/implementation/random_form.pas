{ random_form.pas }

function figRandomForm(): TForm;
var
  number: integer;
begin
  number := random(7);
  case number of
    0: figRandomForm := I;
    1: figRandomForm := J;
    2: figRandomForm := L;
    3: figRandomForm := O;
    4: figRandomForm := S;
    5: figRandomForm := T;
    6: figRandomForm := Z;
  end;
end;
