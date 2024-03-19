# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.26.4)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(sdl2_image-populate NONE)



include(ExternalProject)
ExternalProject_Add(sdl2_image-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "FALSE" "URL" "https://github.com/libsdl-org/SDL_image/releases/download/release-2.6.3/SDL2_image-2.6.3.zip" "URL_HASH" "MD5=ecedb5078bbd31e7d1552e2b1443d2f6"
                    SOURCE_DIR          "/Users/chenshiang/Desktop/MixerX/3rdparty/sdl2_image"
                    BINARY_DIR          "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/sdl2_image-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


