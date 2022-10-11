{ write_form.pas }

{$IFNDEF FIG_WRITE_FORM}
{$DEFINE FIG_WRITE_FORM}

procedure figWriteForm(var matrix: TMatrix; form: TForm);
begin
  matrix[0, matHeight(matrix) - 1] := ord(form);
end;

{$ENDIF}
