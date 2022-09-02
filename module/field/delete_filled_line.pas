{ delete_filled_line.pas }

function IsLineFilled(var matrix: TMatrix; j: integer): boolean;
var
  i: integer;
begin
  for i := 1 to matWidth(matrix) - 2 do
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
  for i := 1 to matWidth(matrix) - 2 do
    for j := n downto 4 do
      matrix[i, j] := matrix[i, j - 1];
end;

function fieDeleteFilledLine(var matrix: TMatrix): boolean;
var
  j: integer;
begin
  for j := 4 to matHeight(matrix) - 2 do
    if IsLineFilled(matrix, j) then begin
      Delete(matrix, j);
      fieDeleteFilledLine := True;
      exit;
    end;
  fieDeleteFilledLine := False;
end;
