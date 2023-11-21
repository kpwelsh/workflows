export LDFLAGS="-Wl,-pie -Wl,-headerpad_max_install_names -Wl,-rpath,$PREFIX/lib -L$PREFIX/lib"
export LDFLAGS_LD="-pie -headerpad_max_install_names -rpath $PREFIX/lib -L$PREFIX/lib"
export CXXFLAGS="-ftree-vectorize -fPIC -fPIE -fstack-protector-strong -O2 -pipe -stdlib=libc++ -fmessage-length=0 -isystem $PREFIX/include -fdebug-prefix-map=$SRC_DIR=/usr/local/src/conda/test-osx-arm64-1 -fdebug-prefix-map=$PREFIX=/usr/local/src/conda-prefix"
mkdir build
cd build
cmake .. $CMAKE_ARGS -DHeffte_ENABLE_FFTW=ON -DBUILD_SHARED_LIBS=ON
make VERBOSE=1