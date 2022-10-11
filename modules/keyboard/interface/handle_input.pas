{ handle_input.pas }

procedure keyHandleInput(var key: TKey);
var
  ch: char;
begin
  if not KeyPressed then begin
    key := k_None;
    exit;
  end;
  ch := ReadKey;
  case ch of
    #0: begin { Обработка символов с расширенным кодом }
      ch := ReadKey;
      case ch of
        #75: key := k_Left;
        #77: key := k_Right;
        #72: key := k_Up;
        #80: key := k_Down;
      end
    end;
    ' ': key := k_Space;
    #27: key := k_Escape;
    #13: key := k_Enter;
  end
end;
