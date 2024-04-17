echo "run with --install flag to install the build"
cmake -S . -B build-x86_64 -G Ninja -D HOLOSCAN_BUILD_LIBTORCH='ON' -D CMAKE_CUDA_ARCHITECTURES='native' -D CMAKE_BUILD_TYPE=Release
cmake --build build-x86_64 -j 64

if [$1="--install"]
cmake --install build-x86_64 --prefix install-x86_64 --component holoscan
cmake --install build-x86_64 --prefix install-x86_64 --component holoscan-core
cmake --install build-x86_64 --prefix install-x86_64 --component holoscan-gxf_extensions
cmake --install build-x86_64 --prefix install-x86_64 --component holoscan-examples
cmake --install build-x86_64 --prefix install-x86_64 --component holoscan-gxf_libs
cmake --install build-x86_64 --prefix install-x86_64 --component holoscan-gxf_bins
cmake --install build-x86_64 --prefix install-x86_64 --component holoscan-modules
cmake --install build-x86_64 --prefix install-x86_64 --component holoscan-dependencies
cmake --install build-x86_64 --prefix install-x86_64 --component holoscan-python_libs