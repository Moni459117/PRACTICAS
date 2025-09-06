program SumaMatrices
    implicit none
    
    integer :: filas, columnas, i, j
    integer, allocatable :: matrizA(:,:), matrizB(:,:), matrizSuma(:,:)
    
    write(*,*) 'Ingrese el número de filas: '
    read(*,*) filas
    write(*,*) 'Ingrese el número de columnas: '
    read(*,*) columnas
    
    allocate(matrizA(filas, columnas))
    allocate(matrizB(filas, columnas))
    allocate(matrizSuma(filas, columnas))
    
    write(*,*) 'Ingrese los elementos de la primera matriz:'
    do i = 1, filas
        do j = 1, columnas
            write(*, '(A, I2, A, I2, A)') 'Elemento [', i-1, '][', j-1, ']: '
            read(*,*) matrizA(i, j)
        end do
    end do
    
    write(*,*) 'Ingrese los elementos de la segunda matriz:'
    do i = 1, filas
        do j = 1, columnas
            write(*, '(A, I2, A, I2, A)') 'Elemento [', i-1, '][', j-1, ']: '
            read(*,*) matrizB(i, j)
        end do
    end do
    
    do i = 1, filas
        do j = 1, columnas
            matrizSuma(i, j) = matrizA(i, j) + matrizB(i, j)
        end do
    end do
    
    write(*,*) '=== RESULTADOS ==='
    write(*,*) 'Matriz A:'
    call mostrarMatriz(matrizA, filas, columnas)
    
    write(*,*) 'Matriz B:'
    call mostrarMatriz(matrizB, filas, columnas)
    
    write(*,*) 'Suma (A + B):'
    call mostrarMatriz(matrizSuma, filas, columnas)
    
    deallocate(matrizA)
    deallocate(matrizB)
    deallocate(matrizSuma)
    
contains

    subroutine mostrarMatriz(matriz, nfilas, ncolumnas)
        integer, intent(in) :: nfilas, ncolumnas
        integer, intent(in) :: matriz(nfilas, ncolumnas)
        integer :: i, j
        
        do i = 1, nfilas
            do j = 1, ncolumnas
                write(*, '(I6, A)', advance='no') matriz(i, j), ' '
            end do
            write(*,*)
        end do
        write(*,*)
    end subroutine mostrarMatriz

end program SumaMatrices