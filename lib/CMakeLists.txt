add_mlir_dialect_library(MLIRVerif
        VerifTypes.cpp
        VerifDialect.cpp
        VerifOps.cpp

        ADDITIONAL_HEADER_DIRS
        ${PROJECT_SOURCE_DIR}/include/Verif

        DEPENDS
        MLIRVerifOpsIncGen
        MLIRVerifPassesIncGen

        LINK_LIBS PUBLIC
        MLIRIR
        MLIRInferTypeOpInterface
        MLIRFuncDialect
        # AIRDialect

        LINK_LIBS PRIVATE
        AIRDialect
        )

add_subdirectory(convert)