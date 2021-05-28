cmake_minimum_required(VERSION 3.5)

project(hello_header)

set(SOURCES
    src/Hello.cpp
    src/main.cpp
)
message (">>>>>> sub PROJECT_NAME: ${PROJECT_NAME}")
add_executable(hello_header ${SOURCES})

target_include_directories(hello_header
    PRIVATE
        ${PROJECT_SOURCE_DIR}/include
        ${PROJECT_SOURCE_DIR}/include/static
)