ExternalProject_Add(uchardet
    GIT_REPOSITORY git://anongit.freedesktop.org/uchardet/uchardet
    GIT_SHALLOW 1
    UPDATE_COMMAND ""
    PATCH_COMMAND ${EXEC} git am ${CMAKE_CURRENT_SOURCE_DIR}/uchardet-*.patch
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${MINGW_INSTALL_PREFIX} -DCMAKE_TOOLCHAIN_FILE=${TOOLCHAIN_FILE} -DBUILD_SHARED_LIBS=OFF -DBUILD_BINARY=OFF -DCMAKE_BUILD_TYPE=Release
    BUILD_COMMAND ${CMAKE_MAKE_PROGRAM}
    INSTALL_COMMAND ${CMAKE_MAKE_PROGRAM} install
    LOG_DOWNLOAD 1 LOG_UPDATE 1 LOG_CONFIGURE 1 LOG_BUILD 1 LOG_INSTALL 1
)

force_rebuild_git(uchardet)
extra_step(uchardet)
