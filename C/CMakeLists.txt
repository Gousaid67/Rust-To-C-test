cmake_minimum_required(
    VERSION 3.1.0
)
project(Build LANGUAGES C)

set(CMAKE_SYSTEM_NAME WindowsStore)
set(CMAKE_SYSTEM_VERSION 10.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

file(GLOB_RECURSE SOURCE)

include(GenerateExportHeader)

set(DLLS_PATH ${CMAKE_SOURCE_DIR}/Dependencies/dlls)