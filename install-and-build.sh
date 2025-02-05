
if [ ! -d past-0.7.2 ]; then
    wget -O past-0.7.2.tar.gz 'https://sourceforge.net/projects/pocc/files/1.6/testing/modules/past-0.7.2.tar.gz/download'
    tar -xf past-0.7.2.tar.gz
    cd past-0.7.2
    ./configure
    make
    pastpath=`realpath src`
    export PATH="$pastpath:$PATH"
    cd ..
fi

LLVM_CMAKE_DIR="$1"
AIR_ROOT_STR=""
if [ "$#" -eq 3 ]; then
  AIR_ROOT_STR="-DAIR_DIR=$2"
fi

PAST_DIR=`realpath past-0.7.2`

# rm -r build CMakeFiles
mkdir -p build && cd build
cmake -G Ninja .. \
  -DLLVM_DIR=$LLVM_CMAKE_DIR/llvm \
  -DMLIR_DIR=$LLVM_CMAKE_DIR/mlir \
  $AIR_ROOT_STR \
  -DPAST_DIR=$PAST_DIR

cmake --build . --target mlir-doc
cmake --build . --target check-verif

cd ..
