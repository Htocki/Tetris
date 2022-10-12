{ is_inactive.pas }

function eleIsInactive(var matrix: TMatrix; i, j: integer): boolean;
begin
  eleIsInactive := matrix[i, j] = 3;
end;
