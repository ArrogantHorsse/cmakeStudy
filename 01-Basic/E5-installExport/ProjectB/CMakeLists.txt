cmake_minimum_required(VERSION 3.20)
project(cmake_install_export_B)
message("default CMAKE_PREFIX_PATH path: " ${CMAKE_PREFIX_PATH})
set(CMAKE_PREFIX_PATH "/usr/local/lib/cmake/MyHello" ${CMAKE_PREFIX_PATH})

find_package(HelloATarget REQUIRED)

set(SOURCES 
    main.cpp
)
add_executable(cmake_install_export_B ${SOURCES})
target_link_libraries(cmake_install_export_B MyHello::HelloA)