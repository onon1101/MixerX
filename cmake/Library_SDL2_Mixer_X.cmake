add_library(Library_MixerX INTERFACE)

set(MixerX_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/SDL-Mixer-X")

FetchContent_Declare(
        MixerX
        GIT_REPOSITORY https://github.com/WohlSoft/SDL-Mixer-X

        SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/SDL-Mixer-X
)
FetchContent_MakeAvailable(MixerX)

target_link_libraries(
        Library_MixerX INTERFACE
        SDL2_mixer_ext_Static
)
