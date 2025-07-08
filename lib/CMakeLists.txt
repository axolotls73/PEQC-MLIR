set(LIB_SOURCES
  VerifTypes.cpp
  VerifDialect.cpp
  VerifOps.cpp
  convert/ConvertToAsync.cpp
  convert/ConvertMisc.cpp
  translate/PastTranslator.cpp
)

set(LIB_DEPENDS
  MLIRVerifOpsIncGen
  MLIRVerifPassesIncGen
)

if (COMPILE_WITH_AIR)
  set(AIR_LIB AIRDialect)
  set(LIB_DEPENDS
    ${LIB_DEPENDS}
    MLIRVerifAirPassesIncGen
  )
  set(LIB_SOURCES
    convert/ConvertAirToAsync.cpp
    convert/ConvertAirToScfParallel.cpp
    convert/ConvertAirMem.cpp
    convert/ConvertAirChannel.cpp
    convert/ConvertAIE.cpp
    ${LIB_SOURCES}
  )
endif()

add_mlir_dialect_library(MLIRVerif
  ${LIB_SOURCES}

  ADDITIONAL_HEADER_DIRS
  ${PROJECT_SOURCE_DIR}/include/Verif

  DEPENDS
  ${LIB_DEPENDS}

  LINK_LIBS PUBLIC
  MLIRIR
  MLIRInferTypeOpInterface
  MLIRFuncDialect

  LINK_LIBS PRIVATE
  ${AIR_LIB}
)
