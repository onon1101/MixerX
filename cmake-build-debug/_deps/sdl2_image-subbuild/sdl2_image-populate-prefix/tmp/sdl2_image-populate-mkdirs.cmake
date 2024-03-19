# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/chenshiang/Desktop/MixerX/3rdparty/sdl2_image"
  "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/sdl2_image-build"
  "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/sdl2_image-subbuild/sdl2_image-populate-prefix"
  "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/sdl2_image-subbuild/sdl2_image-populate-prefix/tmp"
  "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/sdl2_image-subbuild/sdl2_image-populate-prefix/src/sdl2_image-populate-stamp"
  "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/sdl2_image-subbuild/sdl2_image-populate-prefix/src"
  "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/sdl2_image-subbuild/sdl2_image-populate-prefix/src/sdl2_image-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/sdl2_image-subbuild/sdl2_image-populate-prefix/src/sdl2_image-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/sdl2_image-subbuild/sdl2_image-populate-prefix/src/sdl2_image-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
