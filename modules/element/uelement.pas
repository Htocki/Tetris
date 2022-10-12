{ uelement.pas }

unit UElement;

interface
uses UMatrix;

function eleIsActive(var matrix: TMatrix; i, j: integer): boolean;
function eleIsBorder(var matrix: TMatrix; i, j: integer): boolean;
function eleIsEmpty(var matrix: TMatrix; i, j: integer): boolean;
function eleIsInactive(var matrix: TMatrix; i, j: integer): boolean;
function eleIsInBorders(var matrix: TMatrix; i, j: integer): boolean;

implementation
{$I interface/is_active.pas}
{$I interface/is_border.pas}
{$I interface/is_empty.pas}
{$I interface/is_inactive.pas}
{$I interface/is_in_borders.pas}

end.
