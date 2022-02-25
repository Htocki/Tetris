function IsLineFilled(var state: TMatrix; j: integer): boolean;
var
  i: integer;
begin
  for i := 1 to Length(state) - 2 do
    if state[i, j] <> 3 then begin
      IsLineFilled := False;
      exit;
    end;
  IsLineFilled := True;
end;

procedure CutLine(var state: TMatrix; n: integer);
var
  i, j: integer;
begin
  for i := 1 to Length(state) - 2 do
    for j := n downto 4 do
      state[i, j] := state[i, j - 1];
end;

procedure DeleteFilledLine(var state: TMatrix);
var
  j: integer;
begin
  for j := 4 to Length(state[0]) - 2 do
    if IsLineFilled(state, j) then
      CutLine(state, j);
end;
