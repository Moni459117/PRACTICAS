program SumaMatrices;

uses
  SysUtils;

type
  TMatriz = array of array of integer;

procedure ingresarMatriz(var matriz: TMatriz; filas, columnas: integer);
var
  i, j: integer;
begin
  for i := 0 to filas - 1 do
  begin
    for j := 0 to columnas - 1 do
    begin
      Write('Elemento [', i, '][', j, ']: ');
      ReadLn(matriz[i][j]);
    end;
  end;
end;

procedure sumarMatrices(matrizA, matrizB: TMatriz; var matrizSuma: TMatriz; filas, columnas: integer);
var
  i, j: integer;
begin
  for i := 0 to filas - 1 do
  begin
    for j := 0 to columnas - 1 do
    begin
      matrizSuma[i][j] := matrizA[i][j] + matrizB[i][j];
    end;
  end;
end;

procedure mostrarMatriz(matriz: TMatriz; filas, columnas: integer);
var
  i, j: integer;
begin
  for i := 0 to filas - 1 do
  begin
    for j := 0 to columnas - 1 do
    begin
      Write(matriz[i][j]:4, ' ');
    end;
    WriteLn;
  end;
  WriteLn;
end;

var
  filas, columnas, i: integer;
  matrizA, matrizB, matrizSuma: TMatriz;

begin
  Write('Ingrese el número de filas: ');
  ReadLn(filas);
  Write('Ingrese el número de columnas: ');
  ReadLn(columnas);
  
  SetLength(matrizA, filas, columnas);
  SetLength(matrizB, filas, columnas);
  SetLength(matrizSuma, filas, columnas);
  
  WriteLn('Ingrese los elementos de la primera matriz:');
  ingresarMatriz(matrizA, filas, columnas);
  
  WriteLn('Ingrese los elementos de la segunda matriz:');
  ingresarMatriz(matrizB, filas, columnas);
  
  sumarMatrices(matrizA, matrizB, matrizSuma, filas, columnas);
  
  WriteLn('=== RESULTADOS ===');
  WriteLn('Matriz A:');
  mostrarMatriz(matrizA, filas, columnas);
  
  WriteLn('Matriz B:');
  mostrarMatriz(matrizB, filas, columnas);
  
  WriteLn('Suma (A + B):');
  mostrarMatriz(matrizSuma, filas, columnas);
  
  SetLength(matrizA, 0, 0);
  SetLength(matrizB, 0, 0);
  SetLength(matrizSuma, 0, 0);
end.