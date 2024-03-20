
include(ExternalProject)

ExternalProject_Add(
            SDLMixerX_Local
            PREFIX ${CMAKE_BINARY_DIR}/external/SDLMixerX
            #    GIT_REPOSITORY https://github.com/WohlSoft/SDL-Mixer-X.git
            #    UPDATE_COMMAND ""
            DOWNLOAD_COMMAND ""
            SOURCE_DIR ${CMAKE_SOURCE_DIR}/SDL-Mixer-X
            CMAKE_ARGS
            -DCMAKE_INSTALL_PREFIX=${CMAKE_CURRENT_BINARY_DIR}/output
              # -DCMAKE_INSTALL_PREFIX
            DEPENDS ${MixerX_Deps}
            BUILD_BYPRODUCTS
            "${SDL_MixerX_SO_Lib}"
            "${SDL_MixerX_A_Lib}"
    )