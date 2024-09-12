add_llvm_library(VerifPlugin
        # BUILDTREE_ONLY is only for testing purposes
        MODULE BUILDTREE_ONLY
        verif-plugin.cpp

        DEPENDS
        MLIRVerif
        PLUGIN_TOOL
        mlir-opt

        LINK_LIBS
        MLIRVerif
        )
target_include_directories(
        VerifPlugin
        PRIVATE
        "${VERIF_BINARY_DIR}/include"
)
