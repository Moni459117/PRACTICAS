program TrianguloNumerico;
uses crt;
const
  N = 10; { Número de filas del triángulo }
var
  A: array[1..N, 1..N*2] of integer;
  i, j, k, num: integer;
begin
  clrscr;

  for i := 1 to N do
  begin
    num := i mod 10;

    { Parte ascendente }
    for j := 1 to i do
    begin
      A[i, j] := (num) mod 10;
      num := num + 1;
    end;

    num := (i - 1) mod 10;

    { Parte descendente }
    for k := i-1 downto 1 do
    begin
      A[i, 2*i-k] := (num) mod 10;
      num := num - 1;
      if num < 0 then num := 9;  { manejo de ciclo 0-9 }
    end;
  end;

  { Imprimir el triángulo }
  for i := 1 to N do
  begin
    { espacios en blanco para centrar }
    for j := 1 to N - i do
      write('  ');

    { imprimir números de la fila i }
    for j := 1 to 2*i - 1 do
      write(A[i, j]:1);

    writeln;
  end;

  readln;
end.
