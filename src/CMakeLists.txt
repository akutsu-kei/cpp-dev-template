file(GLOB_RECURSE SRC_FILES "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp" "${CMAKE_CURRENT_SOURCE_DIR}/*.cc")

add_library(operator_lib ${SRC_FILES})

target_include_directories(
    operator_lib  
    PUBLIC  
    ${CMAKE_SOURCE_DIR}/src
    /usr/local/include 
    /usr/include/opencv4
)

target_link_libraries(
    operator_lib
    PUBLIC
    opencv_core opencv_imgcodecs opencv_features2d opencv_highgui opencv_imgproc
)