cmake_minimum_required(VERSION 3.5)
project(cmake_install_inst_bin)
############################################################
# Create a library
############################################################
#Generate the shared library from the library sources
add_library(cmake_inst_hello_lib SHARED 
    src/Hello.cpp
)

target_include_directories(cmake_inst_hello_lib
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)
############################################################
# Create an executable
############################################################
set(SOURCES 
    src/main.cpp
)
add_executable(cmake_install_inst_bin ${SOURCES})

target_include_directories(cmake_install_inst_bin
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

# link the new hello_library target with the hello_binary target
target_link_libraries(cmake_install_inst_bin
    PRIVATE
    cmake_inst_hello_lib
)

############################################################
# Install
############################################################

message("default install path: " ${CMAKE_INSTALL_PREFIX})

# install binaries
install(TARGETS cmake_install_inst_bin
    DESTINATION bin
)

# install lib
install(TARGETS cmake_inst_hello_lib
    LIBRARY DESTINATION lib
)
