add_library(Library_SDL2_image  INTERFACE)

FetchContent_Declare(
        sdl2_image

        URL         https://github.com/libsdl-org/SDL_image/releases/download/release-2.6.3/SDL2_image-2.6.3.zip
        URL_HASH    MD5=ecedb5078bbd31e7d1552e2b1443d2f6
        SOURCE_DIR  ${CMAKE_SOURCE_DIR}/3rdparty/sdl2_image
)
FetchContent_MakeAvailable(sdl2_image)
set(BUILD_SHARED_LIBS FALSE)

set(SDL2IMAGE_INSTALL OFF)
set(SDL2IMAGE_VENDORED ON)

target_link_libraries(Library_SDL2_image INTERFACE SDL2_image)
