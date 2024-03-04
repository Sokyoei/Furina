! Fortran file io

program file
    implicit none

    logical :: flag
    integer(4) :: iostat
    character(20) :: str

    ! open
    ! ------------------------------------------------------------------
    ! args      type        描述
    ! ------------------------------------------------------------------
    ! unit      integer     文件标号
    ! iostat    integer     判断文件是否打开成功，成功 0，否则失败
    ! err
    ! file      character   文件名
    ! status                文件先前的状态 NEW/OLD/SCRATCH
    ! access                文件访问方式 SEQUENTIAL(default)/DIRECT
    ! form                  文件格式状态 FORMATTED/UNFORMATTED(defalut)
    ! recl                  每个记录中直接访问文件的长度
    ! ------------------------------------------------------------------

    ! 写入文件
    open (unit=1, iostat=iostat, file="tempCodeRunnerFile.txt")
    write (1, *) "hello world"
    close (1)

    ! 检查文件是否存在
    inquire (file="tempCodeRunnerFile.txt", exist=flag)
    if (flag) then
        ! 读取文件
        open (unit=2, iostat=iostat, file="tempCodeRunnerFile.txt")
        read (2, *) str
        print *, str
        close (2)
    else
        print *, "file not exist"
    end if

end program file
