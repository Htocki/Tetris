{ menu_quit.pas }

procedure modMenuQuit(var state: TState; key: TKey);
begin
  case key of
    k_Up: state := s_MenuPlay;
    k_Enter: halt;
  end;
end;
