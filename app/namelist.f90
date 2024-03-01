! Fortran namelist

program namelist
    implicit none

    character(22), parameter::nml_file = "tempCodeRunnerFile.nml"
    integer(8)::a, b
    logical::flag

    namelist /wnml/ a

    ! 写入 namelist
    open (1, file=nml_file)
    a = 1
    write (1, nml=wnml)
    close (1)

    ! 读取 namelist
    inquire (file=nml_file, exist=flag)
    if (flag) then
        open (2, file=nml_file)
        read (2, nml=wnml)
        print *, a
        close (2)
    else
        print *, nml_file, " are not exist"
    end if

end program namelist
