! Fortran Array

program array
    implicit none

    ! 静态数组
    ! integer(8)::arr(5, 5)
    integer(8), dimension(5, 5)::arr

    ! 动态数组
    integer(8), dimension(:, :), allocatable::allocarr

    integer(4)::i, j
    integer(4)::sizei, sizej
    integer(4)::di, dj

    arr = 1
    data arr(1, :)/1, 2, 3, 4, 5/ !
    do i = 1, 5
        do j = 1, 5
            write (*, "(I2)", advance="no") arr(i, j)
        end do
        write (*, *)
    end do

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    sizei = 3
    sizej = 4
    allocate (allocarr(sizei, sizej))

    allocarr = 2
    do di = 1, sizei
        do dj = 1, sizej
            write (*, "(I2)", advance="no") allocarr(di, dj)
        end do
        write (*, *)
    end do

    deallocate (allocarr)
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

end program array
