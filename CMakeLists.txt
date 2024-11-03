cmake_minimum_required(VERSION 3.14)
project(my_cpp_template)

# GoogleTest requires at least C++14
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(cli)
add_subdirectory(src)
add_subdirectory(tests)
