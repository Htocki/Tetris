{ uconsole.pas }

unit UConsole;

interface
uses crt, sysutils, UMatrix, UState, UUser;
procedure conRender(var matrix: TMatrix; state: TState; var user: TUser);

implementation
{$I render.pas}

end.
