program VerificadorPalindromo
    implicit none
    character(len=100) :: entrada
    logical :: resultado
    
    print *, '=== VERIFICADOR DE PALÍNDROMOS ==='
    print *, 'Ingrese un número o palabra: '
    read(*, '(A)') entrada
    
    resultado = esPalindromo(trim(entrada))
    
    if (resultado) then
        print *, trim(entrada), ' ES un palíndromo'
    else
        print *, trim(entrada), ' NO es un palíndromo'
    end if

contains

    logical function esPalindromo(texto)
        character(len=*), intent(in) :: texto
        character(len=len(texto)) :: textoLimpio
        integer :: i, j, longitud
        

        textoLimpio = texto
        do i = 1, len(textoLimpio)
            if (textoLimpio(i:i) >= 'A' .and. textoLimpio(i:i) <= 'Z') then
                textoLimpio(i:i) = char(ichar(textoLimpio(i:i)) + 32)
            else if (textoLimpio(i:i) == ' ') then
                textoLimpio(i:i) = ''
            end if
        end do
        
        textoLimpio = adjustl(textoLimpio)  
        longitud = len_trim(textoLimpio)
        
        esPalindromo = .true.
        do i = 1, longitud/2
            j = longitud - i + 1
            if (textoLimpio(i:i) /= textoLimpio(j:j)) then
                esPalindromo = .false.
                exit
            end if
        end do
    end function esPalindromo

end program VerificadorPalindromo