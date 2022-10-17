{ uuser.pas }

unit UUser;

interface
type
  TUser = record
    name: string;
    score: integer;
  end;

  procedure useInitialize(var user: TUser);

implementation
{$I interface/initialize.pas}

end.
