! Fortran format

program format
    implicit none

    integer(8)::a;
    a = 5

    write (*, 100) a, a

100 format(I1XXXI1)
end program format
