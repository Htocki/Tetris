{ write_position.pas }

{$IFNDEF FIG_WRITE_POSITION}
{$DEFINE FIG_WRITE_POSITION}

procedure figWritePosition(var matrix: TMatrix; var position: TPosition);
begin
  matrix[2, matHeight(matrix) - 1] := position.x;
  matrix[3, matHeight(matrix) - 1] := position.y;
end;

{$ENDIF}
