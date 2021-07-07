# FindLibXML2.cmake by Cadcorp for Valhalla build with dependencies as static libraries
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args( LIBXML2 DEFAULT_MSG
                                   LIBXML2_LIBRARY
                                   LIBXML2_INCLUDE_DIR )

add_library(LibXML2::LibXML2 INTERFACE IMPORTED)
if( LIBXML2_FOUND )
  if( NOT LIBXML2_FIND_QUIETLY )
    message( STATUS "Found LibXML2..." )
  endif( NOT LIBXML2_FIND_QUIETLY )

  set_target_properties(LibXML2::LibXML2 PROPERTIES
    INTERFACE_LINK_LIBRARIES "${LIBXML2_LIBRARY}"
    INTERFACE_INCLUDE_DIRECTORIES "${LIBXML2_INCLUDE_DIR}")
else( LIBXML2_FOUND )
   if( NOT LIBXML2_FIND_QUIETLY )
      message( WARNING "Could not find LibXML2" )
   endif( NOT LIBXML2_FIND_QUIETLY )
endif( LIBXML2_FOUND )

if( NOT LIBXML2_FIND_QUIETLY )
   message( STATUS "LIBXML2_INCLUDE_DIR=${LIBXML2_INCLUDE_DIR}" )
   message( STATUS "LIBXML2_LIBRARY=${LIBXML2_LIBRARY}" )
endif( NOT LIBXML2_FIND_QUIETLY )
