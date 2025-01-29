
if [ "$#" -ne 2 ]; then
    echo "usage: $0 [mlir-air directory]"
    return
fi

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

AIR_DIR="$2"
PAST_DIR=`realpath past-0.7.2`
LLVM_DIR="$1"

# rm -r build CMakeFiles
mkdir -p build && cd build
cmake -G Ninja .. \
  -DLLVM_DIR=$LLVM_DIR/build/lib/cmake/llvm \
  -DMLIR_DIR=$LLVM_DIR/build/lib/cmake/mlir \
  -DAIR_DIR=$AIR_DIR \
  -DPAST_DIR=$PAST_DIR

cmake --build . --target mlir-doc
cmake --build . --target check-verif

cd ..
