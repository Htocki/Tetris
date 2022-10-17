{ play_pause.pas }

procedure modPlayPause(var state: TState; key: TKey);
begin
  case key of
    k_Space: state := s_PlayStart;
  end;
end;
