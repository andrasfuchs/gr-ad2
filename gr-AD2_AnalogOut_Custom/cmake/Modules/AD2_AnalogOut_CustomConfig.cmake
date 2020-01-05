INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_AD2_ANALOGOUT_CUSTOM AD2_AnalogOut_Custom)

FIND_PATH(
    AD2_ANALOGOUT_CUSTOM_INCLUDE_DIRS
    NAMES AD2_AnalogOut_Custom/api.h
    HINTS $ENV{AD2_ANALOGOUT_CUSTOM_DIR}/include
        ${PC_AD2_ANALOGOUT_CUSTOM_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    AD2_ANALOGOUT_CUSTOM_LIBRARIES
    NAMES gnuradio-AD2_AnalogOut_Custom
    HINTS $ENV{AD2_ANALOGOUT_CUSTOM_DIR}/lib
        ${PC_AD2_ANALOGOUT_CUSTOM_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(AD2_ANALOGOUT_CUSTOM DEFAULT_MSG AD2_ANALOGOUT_CUSTOM_LIBRARIES AD2_ANALOGOUT_CUSTOM_INCLUDE_DIRS)
MARK_AS_ADVANCED(AD2_ANALOGOUT_CUSTOM_LIBRARIES AD2_ANALOGOUT_CUSTOM_INCLUDE_DIRS)
