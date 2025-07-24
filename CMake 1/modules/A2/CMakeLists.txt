set(A2_SOURCES
    src/A2.cpp
)
add_library(A2 ${A2_SOURCES})
target_include_directories(A2
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)