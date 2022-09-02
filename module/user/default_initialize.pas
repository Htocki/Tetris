{ default_initialize.pas }

procedure useDefaultInitialize(var user: TUser);
begin
  user.name := 'name';
  user.score := 0;
end;
