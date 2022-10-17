{ menu_play.pas }

procedure modMenuPlay(var state: TState; key: Tkey);
begin
  case key of
    k_Down: state := s_MenuQuit;
    k_Enter: state := s_PlayStart; 
  end;
end;
