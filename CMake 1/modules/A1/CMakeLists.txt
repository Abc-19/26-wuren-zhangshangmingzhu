set(A1_SOURCES
    src/A11.cpp
    src/A12.cpp
    src/A13.cpp
)
add_library(A1 ${A1_SOURCES})
target_include_directories(A1
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)