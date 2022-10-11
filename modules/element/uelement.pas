{ uelement.pas }

unit UElement;

interface
uses UMatrix;

function eleIsEmpty(var matrix: TMatrix; i, j: integer): boolean;
function eleIsInBorders(var matrix: TMatrix; i, j: integer): boolean;

implementation
{$I interface/is_empty.pas}
{$I interface/is_in_borders.pas}

end.