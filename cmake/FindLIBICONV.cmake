# FindLibICONV.cmake by Cadcorp for Valhalla build with dependencies as static libraries
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args( LIBICONV DEFAULT_MSG
                                   LIBICONV_LIBRARY
                                   LIBICONV_INCLUDE_DIR )

add_library(LibICONV::LibICONV INTERFACE IMPORTED)
if( LIBICONV_FOUND )
  if( NOT LIBICONV_FIND_QUIETLY )
    message( STATUS "Found LibICONV..." )
  endif( NOT LIBICONV_FIND_QUIETLY )

  set_target_properties(LibICONV::LibICONV PROPERTIES
    INTERFACE_LINK_LIBRARIES "${LIBICONV_LIBRARY}"
    INTERFACE_INCLUDE_DIRECTORIES "${LIBICONV_INCLUDE_DIR}")
else( LIBICONV_FOUND )
   if( NOT LIBICONV_FIND_QUIETLY )
      message( WARNING "Could not find LibICONV" )
   endif( NOT LIBICONV_FIND_QUIETLY )
endif( LIBICONV_FOUND )

if( NOT LIBICONV_FIND_QUIETLY )
   message( STATUS "LIBICONV_INCLUDE_DIR=${LIBICONV_INCLUDE_DIR}" )
   message( STATUS "LIBICONV_LIBRARY=${LIBICONV_LIBRARY}" )
endif( NOT LIBICONV_FIND_QUIETLY )
