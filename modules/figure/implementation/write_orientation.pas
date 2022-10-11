{ write_orientation.pas }

{$IFNDEF FIG_WRITE_ORIENTATION}
{$DEFINE FIG_WRITE_ORIENTATION}

procedure figWriteOrientation(
  var matrix: TMatrix;
  orientation: TOrientation);
begin
  matrix[1, matHeight(matrix) - 1] := ord(orientation);
end;

{$ENDIF}
