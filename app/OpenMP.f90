program parallel
    implicit none

    integer(4) :: i

!$omp parallel do private(i)
    do i = 1, 10
        print *, i
    end do
!$omp end parallel do

end program parallel
