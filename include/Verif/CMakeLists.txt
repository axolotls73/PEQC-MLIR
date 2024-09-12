add_mlir_dialect(VerifOps verif)
add_mlir_doc(VerifDialect VerifDialect Verif/ -gen-dialect-doc)
add_mlir_doc(VerifOps VerifOps Verif/ -gen-op-doc)

set(LLVM_TARGET_DEFINITIONS VerifPasses.td)
mlir_tablegen(VerifPasses.h.inc --gen-pass-decls)
add_public_tablegen_target(MLIRVerifPassesIncGen)
