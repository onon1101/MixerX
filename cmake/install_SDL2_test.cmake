
include(FetchContent)

FetchContent_Declare(
        SDL2

        URL         https://github.com/libsdl-org/SDL/releases/download/release-2.26.5/SDL2-2.26.5.zip
        URL_HASH    MD5=0664f3980570c4641128866e6c9f2e29
        SOURCE_DIR  ${CMAKE_SOURCE_DIR}/SDL2
)
FetchContent_GetProperties(SDL2)
message(STATUS "test")
if(NOT SDL2_POPULATED)
    FetchContent_Populate(SDL2)
    set(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_BINARY_DIR}/output" CACHE INTERNAL "<some description>")
    add_subdirectory(SDL2)
endif()
#target_link_libraries(
#        MixerX PUBLIC
#        SDL2::SDL2main
#)
