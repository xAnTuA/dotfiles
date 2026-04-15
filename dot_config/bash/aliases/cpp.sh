alias cmakelists="echo 'cmake_minimum_required(VERSION 3.10)
project(MyProject)
set(CMAKE_CXX_STANDARD 17)
file(GLOB SOURCES \"*.cpp\")
add_executable(MyProject ${SOURCES})' > CMakeLists.txt
"
