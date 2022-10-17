{ draw_separator.pas }

procedure DrawSeparator(var renderer: TRenderer);
var
  j: integer;
begin
  TextColor(Green);
  for j := 0 to renderer.height - 1 do begin
    GotoXY(
      renderer.field.position.x + renderer.field.width,
      renderer.position.y + j);
    Write('H');
  end;
  GotoXY(1, 1);
end;
