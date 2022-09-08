{ default_initialize.pas }

procedure matDefaultInitialize(var matrix: TMatrix; width, height: integer);
begin
  SetLength(matrix, width, height);
  matFill(matrix, 0);
end;
