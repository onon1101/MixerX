cmake_minimum_required(VERSION 3.26)

project(Config)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/sdl2")
# list(APPEND CMAKE_SYSTEM_PREFIX_PATH "${CMAKE_CURRENT_SOURCE_DIR}/SDL2")


set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
if (MSVC)
 set(TARGET_COMPILE_OPTIONS
         /W4
 )
 set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build)
 set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_SOURCE_DIR}/build)
 set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_SOURCE_DIR}/build)
else()
 set(TARGET_COMPILE_OPTIONS
         -Wall -Wextra -pedantic
 )
endif()

if (WIN32 AND CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
 # see https://github.com/ntut-open-source-club/practical-tools-for-simple-design/issues/22
 set(CMAKE_RC_FLAGS="-C 1252")
endif()

option(PTSD_ENABLE_PCH "Turn on PCH to increase compilation speed" OFF)

#include(cmake/Dependencies.cmake)


include(FetchContent)
cmake_policy(SET CMP0135 NEW)
set(FETCH_CONTENT_QUIET FALSE)
include(ExternalProject)

set(BUILD_SHARED_LIBS FALSE)

set(SDL2IMAGE_INSTALL OFF)
set(SDL2IMAGE_VENDORED ON)

set(SDL2TTF_INSTALL OFF)
set(SDL2TTF_VENDORED ON)

set(SDL2MIXER_INSTALL OFF)
set(SDL2MIXER_VENDORED ON)
set(SDL2MIXER_FLAC OFF)
set(SDL2MIXER_MIDI OFF)
set(SDL2MIXER_MOD OFF)
set(SDL2MIXER_OPUS OFF)
set(SDL2MIXER_OGG OFF)
set(SDL2MIXER_VORBIS OFF)
set(SDL2MIXER_VOC OFF)

include(cmake/Library_GL.cmake)
include(cmake/Library_GLM.cmake)
include(cmake/Library_SDL2.cmake)
include(cmake/Library_Spdlog.cmake)
include(cmake/Library_SDL2_ttf.cmake)
include(cmake/Library_SDL2_image.cmake)
include(cmake/Library_SDL2_Mixer_X.cmake)

file(GLOB_RECURSE SRC_FILES src/*)
 file(GLOB_RECURSE HEADER_FILES include/*)

#add_executable(Config main.cc)
add_executable(Config ${SRC_FILES} ${HEADER_FILES} main.cc)

target_compile_definitions(${PROJECT_NAME} PRIVATE
        PTSD_DIR="${CMAKE_CURRENT_SOURCE_DIR}"
)

target_include_directories(
  Config
  PUBLIC ${SDL2_INCLUDE_DIRS} ${MixerX_INCLUDE_DIR}
         ${CMAKE_CURRENT_SOURCE_DIR}/include ${GLEW_INCLUDE_DIR}
         ${GLM_INCLUDE_DIR} ${Spdlog_INCLUDE_DIR})

target_link_libraries(
  Config
  PUBLIC Library_SDL2
         SDL2_mixer_ext_Static
         Library_MixerX
         Library_SDL2_image
         Library_SDL2_ttf
         Library_GL
         Library_GLM
         Library_Spdlog
         ${OPENGL_LIBRARY})

# message(STATUS "SDL2_mixer_ext_Static: ${Library_SDL2}")
