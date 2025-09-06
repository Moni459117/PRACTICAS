program MultiplicacionMatrices;
uses
  SysUtils;

var
  filasA, columnasA, filasB, columnasB, i, j, k: Integer;
  matrizA, matrizB, matrizResultado: array of array of Integer;

begin

  Writeln('=== MULTIPLICACIÓN DE MATRICES ===');
  Write('Filas de la matriz A: ');
  Readln(filasA);
  Write('Columnas de la matriz A: ');
  Readln(columnasA);
  

  Write('Filas de la matriz B: ');
  Readln(filasB);
  Write('Columnas de la matriz B: ');
  Readln(columnasB);
  
  if columnasA <> filasB then
  begin
    Writeln('Error: No se pueden multiplicar las matrices.');
    Writeln('El número de columnas de A debe ser igual al número de filas de B.');
    Exit;
  end;

  SetLength(matrizA, filasA, columnasA);
  SetLength(matrizB, filasB, columnasB);
  SetLength(matrizResultado, filasA, columnasB);
  

  Writeln('');
  Writeln('Ingrese los elementos de la matriz A:');
  for i := 0 to filasA - 1 do
  begin
    for j := 0 to columnasA - 1 do
    begin
      Write('A[', i, '][', j, ']: ');
      Readln(matrizA[i][j]);
    end;
  end;
  

  Writeln('');
  Writeln('Ingrese los elementos de la matriz B:');
  for i := 0 to filasB - 1 do
  begin
    for j := 0 to columnasB - 1 do
    begin
      Write('B[', i, '][', j, ']: ');
      Readln(matrizB[i][j]);
    end;
  end;

  for i := 0 to filasA - 1 do
  begin
    for j := 0 to columnasB - 1 do
    begin
      matrizResultado[i][j] := 0;
      for k := 0 to columnasA - 1 do
      begin
        matrizResultado[i][j] := matrizResultado[i][j] + (matrizA[i][k] * matrizB[k][j]);
      end;
    end;
  end;
  
  Writeln('');
  Writeln('=== RESULTADOS ===');
  
  Writeln('Matriz A:');
  for i := 0 to filasA - 1 do
  begin
    for j := 0 to columnasA - 1 do
    begin
      Write(matrizA[i][j]:4, ' ');
    end;
    Writeln('');
  end;
  Writeln('');
  
  Writeln('Matriz B:');
  for i := 0 to filasB - 1 do
  begin
    for j := 0 to columnasB - 1 do
    begin
      Write(matrizB[i][j]:4, ' ');
    end;
    Writeln('');
  end;
  Writeln('');
  
  Writeln('Matriz Resultado (A × B):');
  for i := 0 to filasA - 1 do
  begin
    for j := 0 to columnasB - 1 do
    begin
      Write(matrizResultado[i][j]:6, ' ');
    end;
    Writeln('');
  end;
  
  Readln;
end.