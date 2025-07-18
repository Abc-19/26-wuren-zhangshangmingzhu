set(M1_SOURCES
    src/M1.cpp
)
aux_source_directory(src Path_M1)

add_library(M1 STATIC ${Path_M1})

add_library(M1 ${M1_SOURCES})
target_include_directories(M1
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_link_libraries(M1
    PUBLIC
        A1
        ${OpenCV_LIBS}
)