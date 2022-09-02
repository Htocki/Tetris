{ copy.pas }

procedure matCopy(var wherefrom: TMatrix; var whereinto: TMatrix);
var
  i, j, w, h: integer;
begin
  w := matWidth(wherefrom);
  h := matHeight(wherefrom);
  SetLength(whereinto, w, h);
  for i := 0 to w - 1 do
    for j := 0 to h - 1 do
      whereinto[i, j] := wherefrom[i, j];
    end;
