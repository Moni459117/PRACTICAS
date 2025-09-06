program TableroAjedrez;
uses crt;
const
  N = 8; { Tamaño del tablero }
var
  i, j: integer;
begin
  clrscr;

  writeln('Tablero de Ajedrez:');
  writeln;

  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      if ((i + j) mod 2 = 0) then
        write(#219#219)   { Casilla negra }
      else
        write('  ');      { Casilla blanca }
    end;
    writeln;
  end;

  readln;
end.
