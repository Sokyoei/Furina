! Fortran number

program number

    use stdlib_random

    implicit none

    integer, parameter :: byte = selected_int_kind(1)
    integer, parameter :: short = selected_int_kind(2)
    integer, parameter :: int = selected_int_kind(4)
    integer, parameter :: long = selected_int_kind(8)
    real, parameter :: float = selected_real_kind(4)
    real, parameter :: double = selected_real_kind(8)

    integer(4) :: ia, ib, ic

    integer(8) :: a, b
    a = 1

    random_seed(a, b)
    print *, a
    ia = -4
    print *, abs(ia)
end program number
