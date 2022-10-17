{ draw_score.pas }

procedure DrawScore(var renderer: TRenderer; score: integer);
begin
  TextColor(Red);
  GotoXY(renderer.score.position.x - 1, renderer.score.position.y);
  Write(score + 1000000);
  GotoXY(renderer.score.position.x - 1, renderer.score.position.y);
  Write(' ');
  GotoXY(1, 1);
end;
