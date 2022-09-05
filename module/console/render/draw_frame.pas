{ draw_frame.pas }

procedure DrawFrame(var renderer: TRenderer);
var
  i, j: integer;
begin
  TextColor(Green);
  for i := 0 to renderer.width do begin
    GotoXY(renderer.position.x + i, renderer.position.y);
    Write('H');
    GotoXY(
      renderer.position.x + i,
      renderer.position.y + renderer.height);
    Write('H');
  end;
  for j := 0 to renderer.height do begin
    GotoXY(renderer.position.x, renderer.position.y + j);
    Write('H');
    GotoXY(renderer.position.x + renderer.width, renderer.position.y + j);
    Write('H');
  end;
  GotoXY(1, 1);
end;
