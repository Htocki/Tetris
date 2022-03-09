{ draw_pause.pas }

procedure DrawPause;
var
  x, y: integer;
  item: string = 'PAUSE';
begin
  x := ScreenWidth div 2 - Length(item) div 2;
  y := ScreenHeight div 2 - 1;
  GotoXY(x, y);
  TextColor(Red);
  Write(item);
  GotoXY(1, 1);
end;
