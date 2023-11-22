mkdir build
cd build
cmake .. $CMAKE_ARGS -DHeffte_ENABLE_FFTW=ON -DBUILD_SHARED_LIBS=ON
make VERBOSE=1