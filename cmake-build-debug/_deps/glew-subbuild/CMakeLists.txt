# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.26.4)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(glew-populate NONE)



include(ExternalProject)
ExternalProject_Add(glew-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "FALSE" "URL" "https://github.com/nigels-com/glew/releases/download/glew-2.2.0/glew-2.2.0.zip" "URL_HASH" "MD5=970535b75b1b69ebd018a0fa05af63d1"
                    SOURCE_DIR          "/Users/chenshiang/Desktop/MixerX/3rdparty/glew"
                    BINARY_DIR          "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/glew-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


