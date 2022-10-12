{ is_active.pas }

function eleIsActive(var matrix: TMatrix; i, j: integer): boolean;
begin
  eleIsActive := matrix[i, j] = 2;
end;
