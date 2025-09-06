program Figuras;
uses crt;
const
  N = 5; { Tamaño de las figuras }
var
  i, j, k: integer;
begin
  clrscr;

  { 1. Cuadrado de asteriscos }
  writeln('Cuadrado:');
  for i := 1 to N do
  begin
    for j := 1 to N do
      write('* ');
    writeln;
  end;
  writeln;

  { 2. Triangulo rectangulo }
  writeln('Triangulo rectangulo:');
  for i := 1 to N do
  begin
    for j := 1 to i do
      write('* ');
    writeln;
  end;
  writeln;

  { 3. Piramide centrada }
  writeln('Piramide:');
  for i := 1 to N do
  begin
    { Espacios en blanco }
    for j := 1 to (N - i) do
      write('  ');
    { Asteriscos }
    for k := 1 to (2*i - 1) do
      write('* ');
    writeln;
  end;

  readln;
end.
