add_library(Library_SDL2  INTERFACE)

find_package(SDL2 REQUIRED)

target_link_libraries(
        Library_SDL2 INTERFACE
        SDL2::SDL2main
)
