file(GLOB_RECURSE SRC_FILES "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp" "${CMAKE_CURRENT_SOURCE_DIR}/*.cc")

add_executable(
    cli_main
    ${SRC_FILES}
)

target_include_directories(cli_main PRIVATE ${SHARED_INCLUDE_DIR})

target_link_libraries(
    cli_main
    ${SHARED_LIBRARY_DIR}
)
