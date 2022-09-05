{ menu_quit.pas }

procedure MenuQuit(var state: TState; key: TKey);
begin
  case key of
    k_Up: state := s_MenuStart;
    k_Enter: halt;
  end;
end;
