add_library(Library_Spdlog  INTERFACE)

set(Spdlog_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/3rdparty/spdlog/include/")


FetchContent_Declare( # At this time 1.11.0 has some issues formatting `const unsigned char *`
        spdlog

        URL         https://github.com/gabime/spdlog/archive/refs/tags/v1.10.0.zip
        URL_HASH    MD5=031565384b28f29e44c6e7fb247ad48a
        SOURCE_DIR  ${CMAKE_SOURCE_DIR}/3rdparty/spdlog/
)
FetchContent_MakeAvailable(spdlog)
target_link_libraries(Library_Spdlog INTERFACE spdlog::spdlog)


