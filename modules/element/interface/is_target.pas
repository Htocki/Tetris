{ is_target.pas }

function eleIsTarget(var matrix: TMatrix; i, j: integer): boolean;
begin
  eleIsTarget := matrix[i, j] = 4;
end;