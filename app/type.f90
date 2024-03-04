module point_module
    implicit none
    ! Fortran module 默认 public, 写了 private 之后的都是 private
    private
    public :: make_point

    type, public :: point
        integer(4), private :: x
        integer(4), private :: y
    contains
        procedure :: init => point_init
        procedure :: print => point_print
        ! final     :: point_del
    end type point

    ! interface 实现函数重载
    interface make_point
        module procedure make_point
        module procedure make_point_1
    end interface

contains
    function make_point() result(retval)
        type(point) :: retval
        retval%x = 0
        retval%y = 0
    end function make_point

    function make_point_1(x, y) result(retval)
        integer, intent(in) :: x, y
        type(point) :: retval
        retval%x = x
        retval%y = y
    end function make_point_1

    subroutine point_init(this, x, y)
        class(point), intent(inout) :: this
        integer(4), intent(in) ::  x, y
        this%x = x
        this%y = y
    end subroutine point_init

    subroutine point_print(this)
        class(point), intent(inout) :: this
        print *, "point(", this%x, ",", this%y, ")"
    end subroutine point_print

    ! subroutine point_del(this)
    !     class(point), intent(inout) :: this
    !     print *, "delete point"
    ! end subroutine point_del
end module point_module

program type
    use point_module
    implicit none
    block
        type(point) :: p
        call p%init(1, 2)
        call p%print()
    end block
    block
        type(point) :: p2
        p2 = make_point(1, 2)
        call p2%print()
    end block
end program type
