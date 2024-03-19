add_library(Library_SDL2_ttf  INTERFACE)

FetchContent_Declare(
        sdl2_ttf

        URL         https://github.com/libsdl-org/SDL_ttf/releases/download/release-2.20.2/SDL2_ttf-2.20.2.zip
        URL_HASH    MD5=7258258fdb2a4adb0072d337f94305f9
        SOURCE_DIR  ${CMAKE_SOURCE_DIR}/3rdparty/sdl2_image
)
FetchContent_MakeAvailable(sdl2_ttf)
set(BUILD_SHARED_LIBS FALSE)

set(SDL2IMAGE_INSTALL OFF)
set(SDL2IMAGE_VENDORED ON)

target_link_libraries(Library_SDL2_ttf INTERFACE SDL2_ttf::SDL2_ttf-static)
