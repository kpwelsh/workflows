ls -R $PREFIX/lib

mkdir build
cd build
cmake .. $CMAKE_ARGS -DHeffte_ENABLE_FFTW=ON -DBUILD_SHARED_LIBS=OFF
make VERBOSE=1