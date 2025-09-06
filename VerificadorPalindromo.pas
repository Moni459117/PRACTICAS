program VerificadorPalindromo;
uses
    SysUtils, Crt;

function esPalindromo(texto: string): boolean;
var
    textoLimpio: string;
    i, longitud: integer;
begin
    textoLimpio := LowerCase(StringReplace(texto, ' ', '', [rfReplaceAll]));
    
    longitud := Length(textoLimpio);
    for i := 1 to longitud div 2 do
    begin
        if textoLimpio[i] <> textoLimpio[longitud - i + 1] then
        begin
            esPalindromo := false;
            Exit;
        end;
    end;
    esPalindromo := true;
end;

var
    entrada: string;
begin
    ClrScr;
    Writeln('=== VERIFICADOR DE PALÍNDROMOS ===');
    Write('Ingrese un número o palabra: ');
    Readln(entrada);
    
    if esPalindromo(entrada) then
        Writeln( entrada, ''' ES un palíndromo')
    else
        Writeln(entrada, ''' NO es un palíndromo');
    
    Readln; // Esperar entrada antes de cerrar
end.