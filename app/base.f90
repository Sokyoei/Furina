program base
    implicit none

    integer(4)::i, j, k

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Fortran 循环

    ! do index = start, end, step
    loop_do: do i = 0, 20, 2
        if (i == 10) exit
        print *, i
    end do loop_do

    j = 0
    loop_do_while: do while (j < 10)
        print *, "2"
    end do loop_do_while

    ! loop_do_concurrent: do concurrent()
    !     print *, ""
    ! end do loop_do_concurrent
end program base
