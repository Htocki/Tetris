{ draw_finish.pas }

procedure DrawFinish;
var
  x, y: integer;
  item: string = 'GAME OVER';
begin
  x := ScreenWidth div 2 - Length(item) div 2;
  y := ScreenHeight div 2 - 1;
  GotoXY(x, y);
  TextColor(Red);
  Write(item);
  GotoXY(1, 1);
end;
