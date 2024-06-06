# GCC
set(GCC_FORTRAN_FLAGS "-fdiagnostics-color=always -Wall -fopenmp")

if(CMAKE_Fortran_COMPILER_LOADED)
    if(CMAKE_Fortran_COMPILER_ID STREQUAL "GNU")
        set(CMAKE_Fortran_FLAGS ${GCC_FORTRAN_FLAGS})
    endif()
endif()
