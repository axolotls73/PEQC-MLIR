add_mlir_library(VerifTranslate
  VerifToPast.cpp

#   PARTIAL_SOURCES_INTENDED
#   ENABLE_AGGREGATION

#   ADDITIONAL_HEADER_DIRS
#   ${AIE_BINARY_DIR}/include
#   $(CMAKE_CURRENT_SRC_DIR)/../../../include/aie/Targets

#   LINK_COMPONENTS
#   BinaryFormat
#   BitReader
#   BitWriter
#   Core
#   IRReader
#   Linker
#   Object
#   Support
#   TransformUtils
#   IPO

  LINK_LIBS PUBLIC
  MLIRVerif
  airDialect
)