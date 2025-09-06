program MultiplicacionMatrices
    implicit none
    
    integer :: filasA, columnasA, filasB, columnasB, i, j, k
    integer, allocatable :: matrizA(:,:), matrizB(:,:), matrizResultado(:,:)
    
    print *, '=== MULTIPLICACIÓN DE MATRICES ==='
    write(*, '(A)', advance='no') 'Filas de la matriz A: '
    read *, filasA
    write(*, '(A)', advance='no') 'Columnas de la matriz A: '
    read *, columnasA
    
    write(*, '(A)', advance='no') 'Filas de la matriz B: '
    read *, filasB
    write(*, '(A)', advance='no') 'Columnas de la matriz B: '
    read *, columnasB
    
    if (columnasA /= filasB) then
        print *, 'Error: No se pueden multiplicar las matrices.'
        print *, 'El número de columnas de A debe ser igual al número de filas de B.'
        stop
    end if
    
    allocate(matrizA(filasA, columnasA))
    allocate(matrizB(filasB, columnasB))
    allocate(matrizResultado(filasA, columnasB))
    
    ! Llenar matriz A
    print *, ''
    print *, 'Ingrese los elementos de la matriz A:'
    do i = 1, filasA
        do j = 1, columnasA
            write(*, '(A,I1,A,I1,A)', advance='no') 'A[', i-1, '][', j-1, ']: '
            read *, matrizA(i, j)
        end do
    end do
    
    print *, ''
    print *, 'Ingrese los elementos de la matriz B:'
    do i = 1, filasB
        do j = 1, columnasB
            write(*, '(A,I1,A,I1,A)', advance='no') 'B[', i-1, '][', j-1, ']: '
            read *, matrizB(i, j)
        end do
    end do
    
    do i = 1, filasA
        do j = 1, columnasB
            matrizResultado(i, j) = 0
            do k = 1, columnasA
                matrizResultado(i, j) = matrizResultado(i, j) + matrizA(i, k) * matrizB(k, j)
            end do
        end do
    end do
    
    print *, ''
    print *, '=== RESULTADOS ==='
    
    print *, 'Matriz A:'
    do i = 1, filasA
        do j = 1, columnasA
            write(*, '(I4)', advance='no') matrizA(i, j)
        end do
        print *, ''
    end do
    print *, ''
    
    print *, 'Matriz B:'
    do i = 1, filasB
        do j = 1, columnasB
            write(*, '(I4)', advance='no') matrizB(i, j)
        end do
        print *, ''
    end do
    print *, ''
    
    print *, 'Matriz Resultado (A × B):'
    do i = 1, filasA
        do j = 1, columnasB
            write(*, '(I6)', advance='no') matrizResultado(i, j)
        end do
        print *, ''
    end do
    
    deallocate(matrizA)
    deallocate(matrizB)
    deallocate(matrizResultado)
    
end program MultiplicacionMatrices