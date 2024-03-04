! Fortran pointer 指针
!
! 指向 allocate/target

program pointer
    implicit none

    integer(8), pointer :: pint;
    integer(8), target :: tint1, tint2;
    ! allocate (pint)

    ! 指针 pint 指向目标 tint1
    pint => tint1
    pint = 1
    print *, tint1
    print *, pint
    ! 指针 pint 指向目标 tint2
    pint => tint2
    pint = 2
    print *, tint1
    print *, tint2
    print *, "pointer pint target to tint1: ", associated(pint, tint1)
    print *, "pointer pint target to tint2: ", associated(pint, tint2)
    ! deallocate (pint)
end program pointer
