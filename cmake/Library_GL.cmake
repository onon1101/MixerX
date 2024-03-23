add_library(Library_GL  INTERFACE)

set(GLEW_INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/glew/include/")

find_package(OpenGL REQUIRED)
FetchContent_Declare(
        glew

        URL         https://github.com/nigels-com/glew/releases/download/glew-2.2.0/glew-2.2.0.zip
        URL_HASH    MD5=970535b75b1b69ebd018a0fa05af63d1
        SOURCE_DIR  ${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/glew
)
add_compile_definitions(GLEW_NO_GLU)

FetchContent_GetProperties(glew)
if (NOT ${glew_POPULATED})
    FetchContent_Populate(glew)
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/glew/build/cmake)
endif()

target_link_libraries(Library_GL INTERFACE glew_s ${OPENGL_LIBRARY})


