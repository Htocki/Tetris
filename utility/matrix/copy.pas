{ copy.pas }

procedure matCopy(var wherefrom: TMatrix; var whereinto: TMatrix);
var
  i, j, w, h: integer;
begin
  w := Length(wherefrom);
  h := Length(wherefrom[0]);
  SetLength(whereinto, w, h);
  for i := 0 to w - 1 do
    for j := 0 to h - 1 do
      whereinto[i, j] := wherefrom[i, j];
    end;
