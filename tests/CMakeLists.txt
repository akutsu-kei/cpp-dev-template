file(GLOB_RECURSE SRC_FILES "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp" "${CMAKE_CURRENT_SOURCE_DIR}/*.cc")

if (DEFINED GOOGLETEST_SOURCE_DIR)
    add_subdirectory(${GOOGLETEST_SOURCE_DIR} googletest)
else()
    include(FetchContent)
    FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/03597a01ee50ed33e9dfd640b249b4be3799d395.zip
    )
    # For Windows: Prevent overriding the parent project's compiler/linker settings
    set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
    FetchContent_MakeAvailable(googletest)
endif()

enable_testing()

add_executable(
    test_main
    ${SRC_FILES}
)

target_include_directories(test_main PRIVATE ${SHARED_INCLUDE_DIR})

target_link_libraries(
    test_main
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(test_main)
