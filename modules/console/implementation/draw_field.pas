{ draw_field.pas }

procedure DrawField(var matrix: TMatrix; var renderer: TRenderer);
var
  i, j: integer;
begin
  for i := 0 to renderer.field.width - 1 do
    for j := 0 to renderer.field.height - 1 do begin
      GotoXY(renderer.field.position.x + i, renderer.field.position.y + j);
      if matrix[i, j] = 1 then begin
        TextColor(Green);
        Write('H');
      end else if matrix[i, j] = 2 then begin
        TextColor(White);
        Write('H');
      end else if matrix[i, j] = 3 then begin
        TextColor(Yellow);
        Write('H');
      end else if matrix[i, j] = 4 then begin
        TextColor(Magenta);
        Write('H');
      end;
    end;
  GotoXY(1, 1);
end;
