mkdir build
cd build
cmake .. $CMAKE_ARGS -DHeffte_ENABLE_FFTW=ON
make