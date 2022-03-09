{ draw_menu_with_active_item.pas }

procedure DrawMenuWithActiveItem(var matrix: TMatrix; number: integer);
var
  x, y: integer;
  title: string = 'T E T R I S :D';
  item1: string = 'PLAY';
  item2: string = 'QUIT';
begin
  x := ScreenWidth div 2 - Length(title) div 2;
  y := ScreenHeight div 2 - Length(matrix[0]) div 2 + 5;
  GotoXY(x, y);
  TextColor(Yellow);
  Write(title);
  case number of
    1: item1 := '> PLAY';
    2: item2 := '> QUIT';
  end;
  x := ScreenWidth div 2 - Length(item1) div 2;
  y := ScreenHeight div 2 - 1;
  GotoXY(x, y);
  TextColor(White);
  Write(item1);
  x := ScreenWidth div 2 - Length(item2) div 2;
  y := ScreenHeight div 2;
  GotoXY(x, y);
  Write(item2);
  GotoXY(1, 1);
end;
