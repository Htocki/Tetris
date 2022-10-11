{ draw_pause.pas }

procedure DrawPause(var renderer: TRenderer);
begin
  TextColor(Red or Blink);
  GotoXY(
    renderer.field.center.x - Length('PAUSE') div 2,
    renderer.field.center.y - 1);
  Write('PAUSE');
  GotoXY(1, 1);
end;
