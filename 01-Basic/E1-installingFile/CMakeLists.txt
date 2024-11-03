cmake_minimum_required(VERSION 3.5)
project(cmake_install_install_file)
include(GNUInstallDirs)
############################################################
# Create a library
############################################################
#Generate the shared library from the library sources
add_library(cmake_install_file_lib SHARED 
    src/Hello.cpp
)

target_include_directories(cmake_install_file_lib
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)
############################################################
# Create an executable
############################################################
set(SOURCES 
    src/main.cpp
)
add_executable(cmake_install_install_file ${SOURCES})

target_include_directories(cmake_install_install_file
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

# link the new hello_library target with the hello_binary target
target_link_libraries(cmake_install_install_file
    PRIVATE
    cmake_install_file_lib
)

############################################################
# Install File
############################################################

message("default install path: " ${CMAKE_INSTALL_PREFIX})

# install binaries
install(TARGETS cmake_install_install_file
    DESTINATION bin
)

# install lib
install(TARGETS cmake_install_file_lib
    LIBRARY DESTINATION lib
)

# install a header file to /usr/local/include
install(FILES "${CMAKE_SOURCE_DIR}/include/Hello.h"
    DESTINATION "/usr/local/header"
    PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ
)

# install a xml config file to /usr/local/config and specify the destination
install(FILES "${CMAKE_SOURCE_DIR}/config.xml"
    DESTINATION "/usr/local/script"
)

# install run.sh and specify a destinaton
# in this example, we usr instal command to intall run,sh to /usr/local/run.sh
install(PROGRAMS "${CMAKE_SOURCE_DIR}/run.sh"
    DESTINATION "/usr/local/script"
)
message("default CMAKE_INSTALL_DOCDIR path: " ${CMAKE_INSTALL_DOCDIR})
# install readme.doc to default dir
install(FILES "${CMAKE_SOURCE_DIR}/readMe.md"
    TYPE DOC
    PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ
)

