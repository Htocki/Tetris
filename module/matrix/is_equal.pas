{ is_equal.pas }

function matIsEqual(var left: TMatrix; var right: TMatrix): boolean;
var
  i, j: integer;
begin
  if matWidth(left) <> matWidth(right) then begin
    matIsEqual := false;
    exit;
  end;

  if matHeight(left) <> matHeight(right) then begin
    matIsEqual := false;
    exit;
  end;

  for i := 0 to matWidth(left) - 1 do
    for j := 0 to matHeight(left) - 1 do 
      if left[i, j] <> right[i, j] then begin
        matIsEqual := false;
        exit;
      end;

  matIsEqual := true;
end;