{ draw_items.pas }

procedure DrawItems(var renderer: TRenderer; active: integer);
var
  item1: string = 'PLAY';
  item2: string = 'QUIT';
begin
  GotoXY(
    renderer.center.x - Length('T E T R I S :D') div 2,
    renderer.position.y + 5);
  TextColor(Yellow);
  Write('T E T R I S :D');
  case active of
    1: item1 := '> PLAY';
    2: item2 := '> QUIT';
  end;
  GotoXY(renderer.center.x - Length(item1) div 2, renderer.center.y);
  TextColor(White);
  Write(item1);
  GotoXY(renderer.center.x - Length(item2) div 2, renderer.center.y + 1);
  Write(item2);
  GotoXY(1, 1);
end;
