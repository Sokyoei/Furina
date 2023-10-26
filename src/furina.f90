module furina
    implicit none
    private

    public :: say_hello
contains
    subroutine say_hello
        print *, "Hello, Furina!"
    end subroutine say_hello
end module furina
