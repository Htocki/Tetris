{ handle_input.pas }
function HandleInput(): TKey;
var
  ch: char;
begin
  ch := ReadKey;
  case ch of
    #0: begin { Обработка символов с расширенным кодом }
      ch := ReadKey;
      case ch of
        #75: HandleInput := Left;
        #77: HandleInput := Right;
        #72: HandleInput := Up;
        #80: HandleInput := Down;
      end
    end;
    ' ': HandleInput := Space;
    #27: HandleInput := Escape;
  end
end;
