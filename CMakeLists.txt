cmake_minimum_required(VERSION 3.20.0)
project(verif-dialect LANGUAGES CXX C)

set(CMAKE_BUILD_WITH_INSTALL_NAME_DIR ON)

set(CMAKE_CXX_STANDARD 17 CACHE STRING "C++ standard to conform to")

if(CMAKE_SOURCE_DIR STREQUAL CMAKE_CURRENT_SOURCE_DIR)
  find_package(MLIR REQUIRED CONFIG)

  message(STATUS "Using MLIRConfig.cmake in: ${MLIR_DIR}")
  message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

  set(LLVM_RUNTIME_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/bin)
  set(LLVM_LIBRARY_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/lib)
  set(MLIR_BINARY_DIR ${CMAKE_BINARY_DIR})

  list(APPEND CMAKE_MODULE_PATH "${MLIR_CMAKE_DIR}")
  list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")

  include(TableGen)
  include(AddLLVM)
  include(AddMLIR)
  include(HandleLLVMOptions)
else()
  # Build via external projects mechanism
  set(MLIR_MAIN_SRC_DIR ${LLVM_MAIN_SRC_DIR}/../mlir)
  set(MLIR_INCLUDE_DIR ${MLIR_MAIN_SRC_DIR}/include)
  set(MLIR_GENERATED_INCLUDE_DIR ${LLVM_BINARY_DIR}/tools/mlir/include)
  set(MLIR_INCLUDE_DIRS "${MLIR_INCLUDE_DIR};${MLIR_GENERATED_INCLUDE_DIR}")
endif()

if(MLIR_ENABLE_BINDINGS_PYTHON)
  include(MLIRDetectPythonEnv)
  mlir_configure_python_dev_packages()
endif()

set(VERIF_SOURCE_DIR ${PROJECT_SOURCE_DIR})
set(VERIF_BINARY_DIR ${PROJECT_BINARY_DIR})
include_directories(${LLVM_INCLUDE_DIRS})
include_directories(${MLIR_INCLUDE_DIRS})
include_directories(${AIR_DIR}/mlir/include)
include_directories(${AIR_DIR}/build-xrt/mlir/include)
include_directories(${AIR_DIR}/install-xrt/include)
include_directories(${AIR_DIR}/mlir-aie/include)
include_directories(${AIR_DIR}/mlir-aie/build/include)
include_directories(${VERIF_SOURCE_DIR}/include)
include_directories(${VERIF_BINARY_DIR}/include)
include_directories(${PAST_DIR}/past/include)
link_directories(${LLVM_BUILD_LIBRARY_DIR})
link_directories(${AIR_DIR}/build-xrt/lib)
link_directories(${AIR_DIR}/build-xrt/mlir/lib)
link_directories(${AIR_DIR}/mlir-aie/build/lib)
link_libraries(${AIR_DIR}/mlir-aie/build/lib/libAIE.a)
# ^ this one needs to be specified separately, no idea why
add_definitions(${LLVM_DEFINITIONS})

set(libpast ${PAST_DIR}/past/.libs/libpast.so)

add_subdirectory(include)
add_subdirectory(lib)
add_subdirectory(test)
add_subdirectory(verif-opt)
add_subdirectory(verif-plugin)
add_subdirectory(verif-translate)
