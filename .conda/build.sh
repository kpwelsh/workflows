mkdir build
cd build
export LDFLAGS="$LDFLAGS -lc++"
cmake .. $CMAKE_ARGS -DHeffte_ENABLE_FFTW=ON
make VERBOSE=1