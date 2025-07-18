set(M2_SOURCES
    src/M2.cpp
)
add_library(M2 ${M2_SOURCES})
target_include_directories(M2
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_link_libraries(M2
    PUBLIC
        A1
        A2
        math
        ${OpenCV_LIBS}
)