# MSVC flags

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /W3")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W3")

message(STATUS "Platform: ${PLATFORM}")

if ("${PLATFORM}" STREQUAL "x86")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /MACHINE:X86")
    set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} /MACHINE:X86")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} /MACHINE:X86")
    set(CMAKE_STATIC_LINKER_FLAGS "${CMAKE_STATIC_LINKER_FLAGS} /MACHINE:X86")
elseif ("${PLATFORM}" STREQUAL "x64")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /MACHINE:X64")
    set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} /MACHINE:X64")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} /MACHINE:X64")
    set(CMAKE_STATIC_LINKER_FLAGS "${CMAKE_STATIC_LINKER_FLAGS} /MACHINE:X64")
endif()

message(STATUS "Configuration: ${CONFIGURATION}")

if ("${CONFIGURATION}" STREQUAL "Debug")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /Od")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /Od")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /DEBUG")
    set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} /DEBUG")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} /DEBUG")
    set(CMAKE_STATIC_LINKER_FLAGS "${CMAKE_STATIC_LINKER_FLAGS} /DEBUG")
else()
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /O2")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /O2")
endif()

# Use DLL multi-threads
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /MD")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MD")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /wd4819")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /wd4819")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /wd4800")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /wd4800")

if (TS_USE_DEBUG_API)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /wd4251 /wd4275 /wd4910")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /wd4251 /wd4275 /wd4910")
endif ()

# deal with warning C4530 and C4577
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /EHsc")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /EHsc")

# compile with multi-processor
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /MP")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MP")
