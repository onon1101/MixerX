
macro(mixer_add_warning_flag WARNINGFLAG WARNING_VAR)
    check_c_compiler_flag("${WARNINGFLAG}" HAVE_W_C_${WARNING_VAR})
    if(HAVE_W_C_${WARNING_VAR})
        set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${WARNINGFLAG}")
    endif()

    check_cxx_compiler_flag("${WARNINGFLAG}" HAVE_W_CXX_${WARNING_VAR})
    if(HAVE_W_CXX_${WARNING_VAR})
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${WARNINGFLAG}")
    endif()
endmacro()

macro(mixer_disable_warning_flag WARNINGFLAG WARNING_VAR)
    check_c_compiler_flag("-W${WARNINGFLAG}" HAVE_W_C_${WARNING_VAR})
    if(HAVE_W_C_${WARNING_VAR})
        set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-${WARNINGFLAG}")
    endif()

    check_cxx_compiler_flag("-W${WARNINGFLAG}" HAVE_W_CXX_${WARNING_VAR})
    if(HAVE_W_CXX_${WARNING_VAR})
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-${WARNINGFLAG}")
    endif()
endmacro()

# Add compiler argument(s)
macro(mixer_add_opt_flag OPTFLAG OPT_VAR)
    check_c_compiler_flag("${OPTFLAG}" HAVE_M_C_${OPT_VAR})
    if(HAVE_M_C_${OPT_VAR})
        set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OPTFLAG}")
    endif()

    check_cxx_compiler_flag("${OPTFLAG}" HAVE_M_CXX_${OPT_VAR})
    if(HAVE_M_CXX_${OPT_VAR})
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OPTFLAG}")
    endif()
endmacro()

macro(mixer_add_c_compiler_flag COMPILERFLAG COMPILERFLAG_VAR)
    check_c_compiler_flag("${COMPILERFLAG}" HAVE_C_${COMPILERFLAG_VAR})
    if(HAVE_C_${COMPILERFLAG_VAR})
       set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${COMPILERFLAG}")
    endif()
endmacro()

macro(mixer_add_cxx_compiler_flag COMPILERFLAG COMPILERFLAG_VAR)
    check_cxx_compiler_flag("${COMPILERFLAG}" HAVE_CXX_${COMPILERFLAG_VAR})
    if(HAVE_CXX_${COMPILERFLAG_VAR})
       set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${COMPILERFLAG}")
    endif()
endmacro()
