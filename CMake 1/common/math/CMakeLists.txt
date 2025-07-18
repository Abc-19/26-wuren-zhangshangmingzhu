set(MATH_SOURCES
    src/Math.cpp
)
add_library(math ${MATH_SOURCES})
target_include_directories(math
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_link_libraries(math ${OpenCV_LIBS})