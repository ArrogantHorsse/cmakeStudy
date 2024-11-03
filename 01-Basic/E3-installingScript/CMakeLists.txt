cmake_minimum_required(VERSION 3.5)
project(cmake_install_install_file)
include(GNUInstallDirs)
############################################################
# Create an executable
############################################################
set(SOURCES 
    src/main.cpp
    src/Test1.cpp
    src/Test2.cpp
)
add_executable(cmake_install_install_file ${SOURCES})

target_include_directories(cmake_install_install_file
    PUBLIC
        ${PROJECT_SOURCE_DIR}/api1
        ${PROJECT_SOURCE_DIR}/api2
)

############################################################
# Install File
############################################################

message("default install path: " ${CMAKE_INSTALL_PREFIX})

# install binaries
install(TARGETS cmake_install_install_file
    DESTINATION bin
)

############################################################
# Install Directory
############################################################
install(DIRECTORY "${CMAKE_SOURCE_DIR}/api1"
    DESTINATION "/usr/local"
)

install(DIRECTORY "${CMAKE_SOURCE_DIR}/api2/"
    DESTINATION "/usr/local"
)