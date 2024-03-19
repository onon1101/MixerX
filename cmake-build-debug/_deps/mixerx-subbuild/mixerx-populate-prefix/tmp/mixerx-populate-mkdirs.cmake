# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/chenshiang/Desktop/MixerX/3rdparty/SDL-Mixer-X"
  "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/mixerx-build"
  "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/mixerx-subbuild/mixerx-populate-prefix"
  "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/mixerx-subbuild/mixerx-populate-prefix/tmp"
  "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/mixerx-subbuild/mixerx-populate-prefix/src/mixerx-populate-stamp"
  "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/mixerx-subbuild/mixerx-populate-prefix/src"
  "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/mixerx-subbuild/mixerx-populate-prefix/src/mixerx-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/mixerx-subbuild/mixerx-populate-prefix/src/mixerx-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/chenshiang/Desktop/MixerX/cmake-build-debug/_deps/mixerx-subbuild/mixerx-populate-prefix/src/mixerx-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
