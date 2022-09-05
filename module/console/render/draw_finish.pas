{ draw_finish.pas }

procedure DrawFinish(var renderer: TRenderer);
begin
  TextColor(Red or Blink);
  GotoXY(
    renderer.field.center.x - Length('GAME OVER') div 2,
    renderer.field.center.y - 1);
  Write('GAME OVER');
  GotoXY(1, 1);
end;
