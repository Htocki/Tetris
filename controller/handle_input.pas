{ handle_input.pas }

procedure HandleInput(var key: TKey);
var
  ch: char;
begin
  if not KeyPressed then begin
    key := NonPressed;
    exit;
  end;
  ch := ReadKey;
  case ch of
    #0: begin { Обработка символов с расширенным кодом }
      ch := ReadKey;
      case ch of
        #75: key := Left;
        #77: key := Right;
        #72: key := Up;
        #80: key := Down;
      end
    end;
    ' ': key := Space;
    #27: key := Escape;
  end
end;
