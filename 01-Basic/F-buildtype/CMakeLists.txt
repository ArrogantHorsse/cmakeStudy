cmake_minimum_required(VERSION 3.10)

# =============  set build type=debug  ==================
project(buildtype_debug)
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug)
endif()

add_executable(buildtype_debug main.cpp)

# =============  set build type=release  ==================
# project(buildtype_release)
# if(NOT CMAKE_BUILD_TYPE)
#     set(CMAKE_BUILD_TYPE Release)
# endif()

# add_executable(buildtype_release main.cpp)