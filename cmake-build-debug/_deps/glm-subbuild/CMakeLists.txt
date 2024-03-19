# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.26.4)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(glm-populate NONE)



include(ExternalProject)
ExternalProject_Add(glm-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "FALSE" "URL" "https://github.com/g-truc/glm/releases/download/0.9.9.8/glm-0.9.9.8.zip" "URL_HASH" "MD5=69895110052f0d711c9c54fbf385f6f5"
                    SOURCE_DIR          "/Users/chenshiang/Desktop/MixerX/3rdparty/glm/"
                    BINARY_DIR          "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/glm-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


