{ restart.pas }

procedure fieRestart(var state: TMatrix);
begin
  fieAdd(state, Length(state), Length(state[0]) - 4);
end;
