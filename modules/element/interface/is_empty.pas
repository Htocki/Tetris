{ is_empty.pas }

function eleIsEmpty(var matrix: TMatrix; i, j: integer): boolean;
begin
  eleIsEmpty := (matrix[i, j] = 0) or (matrix[i, j] = 4);
end;
