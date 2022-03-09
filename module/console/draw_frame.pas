{ draw_frame.pas }

procedure DrawFrame(var matrix: TMatrix);
var
  i, j, width, height, left, right, top, down: integer;
begin
  width := Length(matrix);
  height := Length(matrix[0]);
  left := ScreenWidth div 2 - width div 2;
  right := left + width - 1;
  top := ScreenHeight div 2 - height div 2;
  down := top + height - 1;
  TextColor(Green);
  { Вертикальные линии. }
  for i := 0 to width - 1 do begin
    GotoXY(i + left, top);
    Write('H');
    GotoXY(i + left, down);
    Write('H');
  end;
  { Горизонтальные линии. }
  for j := 0 to height - 1 do begin
    GotoXY(left, j + top);
    Write('H');
    GotoXY(right, j + top);
    Write('H');
  end;
  GotoXY(1, 1);
end;
