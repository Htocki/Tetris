{ add.pas }

{$IFNDEF FIG_ADD}
{$DEFINE FIG_ADD}

{$I ../implementation/add_i.pas}
{$I ../implementation/add_j.pas}
{$I ../implementation/add_l.pas}
{$I ../implementation/add_o.pas}
{$I ../implementation/add_s.pas}
{$I ../implementation/add_t.pas}
{$I ../implementation/add_z.pas}

function figAdd(
  var matrix: TMatrix;
  form: TForm;
  orientation: TOrientation;
  var position: TPosition): boolean;
begin
  case form of
    I: figAdd := figAddI(matrix, orientation, position);
    J: figAdd := figAddJ(matrix, orientation, position);
    L: figAdd := figAddL(matrix, orientation, position);
    O: figAdd := figAddO(matrix, orientation, position);
    S: figAdd := figAddS(matrix, orientation, position);
    T: figAdd := figAddT(matrix, orientation, position);
    Z: figAdd := figAddZ(matrix, orientation, position);
  end;
end;

{$ENDIF}
