cmake_minimum_required(VERSION 3.5)
project(cmake_install_script_code)
############################################################
# Create an executable
############################################################
set(SOURCES 
    src/main.cpp
)
add_executable(cmake_install_script_code ${SOURCES})

install(SCRIPT "${CMAKE_CURRENT_SOURCE_DIR}/cmake/install_script.cmake")
install(CODE "message(\"This is an example of installing CODE\")")

