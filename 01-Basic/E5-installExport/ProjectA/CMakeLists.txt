cmake_minimum_required(VERSION 3.15)
project(cmake_install_export_A)

message("CMAKE_INSTALL_PREFIX: " ${CMAKE_INSTALL_PREFIX})

set(PACKAGE_INCLUDE_DIRS "${CMAKE_INSTALL_PREFIX}/include")

# 1. Create an shared lib
add_library(HelloA SHARED 
    src/HelloA.cpp
)
target_include_directories(HelloA
    PRIVATE
        ${PROJECT_SOURCE_DIR}/include
)

# 2. install library
install(TARGETS HelloA
    EXPORT HelloATarget
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    RUNTIME DESTINATION bin
)

# 3. install export file 
install(EXPORT HelloATarget
    FILE HelloATarget.cmake
    NAMESPACE MyHello::
    DESTINATION lib/cmake/MyHello
)

# 4. install config file
include(CMakePackageConfigHelpers)
# Generate HelloATargetConfig.cmake file using template HelloATargetConfig.cmake.in file
configure_package_config_file(
    HelloATargetConfig.cmake.in
    HelloATargetConfig.cmake
    INSTALL_DESTINATION lib/cmake/MyHello)
# write package version info so other project can check version when they use the lib
write_basic_package_version_file(
    "${CMAKE_CURRENT_BINARY_DIR}/HelloATargetConfigVersion.cmake"
    VERSION 1.0
    COMPATIBILITY AnyNewerVersion
)
# install config file
install(FILES
    "${CMAKE_CURRENT_BINARY_DIR}/HelloATargetConfigVersion.cmake"
    "${CMAKE_CURRENT_BINARY_DIR}/HelloATargetConfig.cmake"
    DESTINATION lib/cmake/MyHello
)
# 5. install header files
install(DIRECTORY include/
    DESTINATION include
)

