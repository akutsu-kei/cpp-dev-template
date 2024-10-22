cmake_minimum_required(VERSION 3.14)
project(my_cpp_template)

# GoogleTest requires at least C++14
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(SHARED_INCLUDE_DIR /usr/local/include ${CMAKE_SOURCE_DIR} /usr/include/opencv4)
set(SHARED_LIBRARY_DIR opencv_core)

add_subdirectory(cli)
add_subdirectory(src)
add_subdirectory(tests)
