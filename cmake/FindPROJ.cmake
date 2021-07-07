# FindPROJ.cmake by Cadcorp for Valhalla build with dependencies as static libraries
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args( PROJ DEFAULT_MSG
                                   PROJ_LIBRARY
                                   PROJ_INCLUDE_DIR )

add_library(PROJ::PROJ INTERFACE IMPORTED)
if( PROJ_FOUND )
  if( NOT PROJ_FIND_QUIETLY )
    message( STATUS "Found PROJ..." )
  endif( NOT PROJ_FIND_QUIETLY )

  set_target_properties(PROJ::PROJ PROPERTIES
    INTERFACE_LINK_LIBRARIES "${PROJ_LIBRARY}"
    INTERFACE_INCLUDE_DIRECTORIES "${PROJ_INCLUDE_DIR}")
else( PROJ_FOUND )
   if( NOT PROJ_FIND_QUIETLY )
      message( WARNING "Could not find PROJ" )
   endif( NOT PROJ_FIND_QUIETLY )
endif( PROJ_FOUND )

if( NOT PROJ_FIND_QUIETLY )
   message( STATUS "PROJ_INCLUDE_DIR=${PROJ_INCLUDE_DIR}" )
   message( STATUS "PROJ_LIBRARY=${PROJ_LIBRARY}" )
endif( NOT PROJ_FIND_QUIETLY )
