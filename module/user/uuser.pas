{ uuser.pas }

unit UUser;

interface
type
  TUser = record
    name: string;
    score: integer;
  end;

  procedure useDefaultInitialize(var user: TUser);

implementation
{$I default_initialize.pas}

end.
