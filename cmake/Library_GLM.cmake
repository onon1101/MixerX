add_library(Library_GLM  INTERFACE)

set(GLM_INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/glm/")

FetchContent_Declare(
        glm

        URL         https://github.com/g-truc/glm/releases/download/0.9.9.8/glm-0.9.9.8.zip
        URL_HASH    MD5=69895110052f0d711c9c54fbf385f6f5
        SOURCE_DIR  ${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/glm/
)
FetchContent_MakeAvailable(glm)

target_link_libraries(Library_GLM INTERFACE glm::glm)


