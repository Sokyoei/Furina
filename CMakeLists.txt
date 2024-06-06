cmake_minimum_required(VERSION 3.20.0)

project(Furina VERSION 0.0.1 LANGUAGES Fortran)

include(${PROJECT_SOURCE_DIR}/cmake/compiler.cmake)

add_subdirectory(app)
