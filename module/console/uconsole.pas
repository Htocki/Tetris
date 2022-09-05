{ uconsole.pas }

unit UConsole;

interface
uses crt, sysutils, UMatrix, UState, UUser;
procedure conRender(var matrix: TMatrix; var state: TState; var user: TUser);

implementation
{$I render.pas}

end.
