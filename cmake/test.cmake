add_library(PGE_SDLMixerX        INTERFACE)
add_library(PGE_SDLMixerX_static INTERFACE)

#set(DEPENDENCIES_INSTALL_DIR "${CMAKE_BINARY_DIR}/output")
set(DEPENDENCIES_INSTALL_DIR "C:/Users/adven/Desktop/SDL/cmake-build-debug/external/AudioCodecs/src/AudioCodecs_Local-build/")

#set(SDL_MixerX_SO_Lib "${CMAKE_BINARY_DIR}/external/SDLMixerX/src/SDLMixerX_Local-build/lib/libSDL2_mixer_ext.a")
#set(SDL2_SO_Lib "${CMAKE_BINARY_DIR}/external/SDLMixerX/src/SDLMixerX_Local-build/lib/libSDL2.a")

set(SDL_MixerX_SO_Lib   "${DEPENDENCIES_INSTALL_DIR}/lib/libSDL2_mixer_ext.dll.a")
set(SDL2_SO_Lib         "${DEPENDENCIES_INSTALL_DIR}/lib/libSDL2.dll.a")
set(SDL2_A_Lib          "${DEPENDENCIES_INSTALL_DIR}/lib/libSDL2.a")
set(SDL2_main_A_Lib     "${DEPENDENCIES_INSTALL_DIR}/lib/libSDL2main.a")


include(ExternalProject)

set(CMAKE_INSTALL_PREFIX "C:/Users/adven/Desktop/SDL/Mylibs")
set(Path_test "C:/Users/adven/Desktop/SDL/Mylibs")

message(STATUS "Path: ${CMAKE_SOURCE_DIR}/3rdparty/AudioCodecs")
ExternalProject_Add(
        AudioCodecs_Local
        PREFIX ${CMAKE_BINARY_DIR}/external/AudioCodecs
        #    GIT_REPOSITORY https://github.com/WohlSoft/AudioCodecs.git
        #   UPDATE_COMMAND ""
        DOWNLOAD_COMMAND ""
        SOURCE_DIR ${CMAKE_SOURCE_DIR}/3rdparty/AudioCodecs
        CMAKE_ARGS
        "-DUSE_LOCAL_SDL2=ON"
#        "-DDOWNLOAD_SDL2_DEPENDENCY=ON"
#        "-DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE}"
        "-DCMAKE_INSTALL_PREFIX=C:/Users/adven/Desktop/SDL/Mylibs" # success
#         "-DCMAKE_INSTALL_PREFIX=${Path_test}"
#        "-DCMAKE_INSTALL_PREFIX=%UserProfile%/MyLibs/"
        "-DCMAKE_BUILD_TYPE=Release"
#        "-DCMAKE_MAKE_PROGRAM=${CMAKE_MAKE_PROGRAM}"
#        ${AUDIO_CODECS_BUILD_ARGS}
#        $<$<BOOL:APPLE>:-DCMAKE_OSX_DEPLOYMENT_TARGET=${CMAKE_OSX_DEPLOYMENT_TARGET}>
#        $<$<BOOL:APPLE>:-DCMAKE_OSX_ARCHITECTURES=${CMAKE_OSX_ARCHITECTURES}>
#        $<$<BOOL:WIN32>:-DCMAKE_SHARED_LIBRARY_PREFIX="">
        DEPENDS ${AudioCodecs_Deps}
        BUILD_BYPRODUCTS
        "${SDL2_SO_Lib}"
        "${SDL2_A_Lib}"
        "${SDL2_main_A_Lib}"
#        "${AC_ZLIB}"
#        #        "${SDLHIDAPI_SO_Lib}" # No longer needed since SDL 2.0.18
#        ${MixerX_CodecLibs}
)

ExternalProject_Add(
            SDLMixerX_Local
            PREFIX ${CMAKE_BINARY_DIR}/external/SDLMixerX
            #    GIT_REPOSITORY https://github.com/WohlSoft/SDL-Mixer-X.git
            #    UPDATE_COMMAND ""
            DOWNLOAD_COMMAND ""
            SOURCE_DIR ${CMAKE_SOURCE_DIR}/SDL-Mixer-X
            CMAKE_ARGS
#             "-DDOWNLOAD_AUDIO_CODECS_DEPENDENCY=ON"
#            "-DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE}"
#            "-DCMAKE_INSTALL_PREFIX=${DEPENDENCIES_INSTALL_DIR}"
            "-DCMAKE_INSTALL_PREFIX=C:/User/adven/Desktop/SDL/cmake-build-debug/external/AudioCodecs/src/AudioCodecs_Local-build/"
#            "-DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}"
#            "-DCMAKE_MAKE_PROGRAM=${CMAKE_MAKE_PROGRAM}"
#            "-DAUDIO_CODECS_REPO_PATH=${CMAKE_BINARY_DIR}/external/AudioCodecs"
#            "-DAUDIO_CODECS_INSTALL_PATH=${CMAKE_BINARY_DIR}/output/"
#            "-DAUDIO_CODECS_INSTALL_PATH=${DEPENDENCIES_INSTALL_DIR}"
            "-DUSE_SYSTEM_SDL2=OFF"
#            "-DCMAKE_DEBUG_POSTFIX=${PGE_LIBS_DEBUG_SUFFIX}"
#            "-DSDL_MIXER_X_SHARED=${PGE_SHARED_SDLMIXER}"
#            "-DAUDIO_CODECS_SDL2_HG_BRANCH=${SDL_BRANCH}"
#            "-DAUDIO_CODECS_SDL2_GIT_BRANCH=${SDL_GIT_BRANCH}"
#            "-DMIXERX_ENABLE_GPL=ON"
#            "-DWITH_SDL2_WASAPI=ON"
#            "-DUSE_MIDI_FLUIDLITE_OGG_STB=ON"
#            "-DUSE_DRFLAC=ON"
#            "-DUSE_FLAC=OFF"
#            "-DUSE_WAVPACK=${MIXERX_ENABLE_WAVPACK}"
#            "-DUSE_OGG_VORBIS_STB=${MIXER_USE_OGG_VORBIS_STB}"
#            "-DUSE_OGG_VORBIS_TREMOR=${MIXER_USE_OGG_VORBIS_TREMOR}"
#            "-DUSE_MP3_DRMP3=ON"
#            "-DUSE_MP3_MPG123=OFF"
#            "-DUSE_SYSTEM_ZLIB=${USE_SYSTEM_ZLIB}"
#            ${MIXERX_CMAKE_FLAGS}
#            ${ANDROID_CMAKE_FLAGS}
#            ${VITA_CMAKE_FLAGS}
#            ${VITA_MIXERX_CMAKE_FLAGS}
#            $<$<BOOL:APPLE>:-DCMAKE_OSX_DEPLOYMENT_TARGET=${CMAKE_OSX_DEPLOYMENT_TARGET}>
#            $<$<BOOL:APPLE>:-DCMAKE_OSX_ARCHITECTURES=${CMAKE_OSX_ARCHITECTURES}>
#            $<$<BOOL:WIN32>:-DCMAKE_SHARED_LIBRARY_PREFIX="">
            DEPENDS ${MixerX_Deps}
            BUILD_BYPRODUCTS
            "${SDL_MixerX_SO_Lib}"
            "${SDL_MixerX_A_Lib}"
    )

target_link_libraries(PGE_SDLMixerX_static INTERFACE "${SDL2_A_Lib}")
target_link_libraries(PGE_SDLMixerX_static INTERFACE "${SDL2_main_A_Lib}")
target_link_libraries(PGE_SDLMixerX INTERFACE "${SDL_MixerX_SO_Lib}")
target_link_libraries(PGE_SDLMixerX_static INTERFACE "${SDL_MixerX_A_Lib}")