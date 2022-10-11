{ read_form.pas }

{$IFNDEF FIG_READ_FORM}
{$DEFINE FIG_READ_FORM}

function figReadForm(var matrix: TMatrix): TForm;
begin
  case matrix[0, matHeight(matrix) - 1] of 
    0: figReadForm := I;
    1: figReadForm := J;
    2: figReadForm := L;
    3: figReadForm := O;
    4: figReadForm := S;
    5: figReadForm := T;
    6: figReadForm := Z;
  end;
end;

{$ENDIF}
