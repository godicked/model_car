###############################################################################
# SUBDIRECTORIES
###############################################################################

if(ECL_PLATFORM_HAS_POSIX_THREADS)
  add_subdirectory(lib)
endif()

if(CATKIN_ENABLE_TESTING)
  add_subdirectory(test)
endif()
