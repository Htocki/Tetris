{ umodel.pas }

unit UModel;

interface
uses
  crt, UField, UFigure, UMatrix, UKey, UState, UTarget, UUser;
  
procedure modInitialize(var matrix: TMatrix; var state: TState);
procedure modGetRenderingArea(
  var matrix: TMatrix; var rendering_area: TMatrix);
procedure modUpdate(
  var matrix: TMatrix; var state: TState;
  key: TKey; var user: TUser);

implementation
{$I interface/initialize.pas}
{$I interface/get_rendering_area.pas}
{$I interface/update.pas}

end.
