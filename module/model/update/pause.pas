{ pause.pas }

procedure Pause(var state: TState; key: TKey);
begin
  case key of
    k_Space: state := s_PlayStart;
  end;
end;
