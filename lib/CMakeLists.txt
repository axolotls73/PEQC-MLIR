add_mlir_dialect_library(MLIRVerif
        VerifTypes.cpp
        VerifDialect.cpp
        VerifOps.cpp
        convert/ConvertToAsync.cpp
        convert/ConvertToScfParallel.cpp
        convert/ConvertMem.cpp
        convert/ConvertChannel.cpp

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
