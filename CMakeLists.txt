cmake_minimum_required(VERSION 3.20.0)

project(Furina VERSION 0.0.1 LANGUAGES Fortran)

if(CMAKE_Fortran_COMPILER_LOADED)
    if(CMAKE_Fortran_COMPILER_ID STREQUAL "GNU")
        set(CMAKE_Fortran_FLAGS "-fopenmp")
    endif()
endif()

add_subdirectory(app)
