{ is_border.pas }

function eleIsBorder(var matrix: TMatrix; i, j: integer): boolean;
begin
  eleIsBorder := matrix[i, j] = 1;
end;
