{ restart.pas }

procedure fieRestart(var matrix: TMatrix);
begin
  fieAdd(matrix, Length(matrix), Length(matrix[0]) - 4);
end;
