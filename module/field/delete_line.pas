{ delete_line.pas }

function IsLineFilled(var matrix: TMatrix; j: integer): boolean;
var
  i: integer;
begin
  for i := 1 to Length(matrix) - 2 do
    if matrix[i, j] <> 3 then begin
      IsLineFilled := False;
      exit;
    end;
  IsLineFilled := True;
end;

procedure Delete(var matrix: TMatrix; n: integer);
var
  i, j: integer;
begin
  for i := 1 to Length(matrix) - 2 do
    for j := n downto 4 do
      matrix[i, j] := matrix[i, j - 1];
end;

procedure fieDeleteFilledLine(var matrix: TMatrix);
var
  j: integer;
begin
  for j := 4 to Length(matrix[0]) - 2 do
    if IsLineFilled(matrix, j) then
      Delete(matrix, j);
end;
