get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)
set(LIBS
    ${dialect_libs}
    ${conversion_libs}
    MLIRArithDialect
    MLIRLspServerLib
    MLIRVerif
)
add_llvm_executable(verif-lsp-server verif-lsp-server.cpp)

llvm_update_compile_flags(verif-lsp-server)
target_link_libraries(verif-lsp-server PRIVATE ${LIBS})

mlir_check_all_link_libraries(verif-lsp-server)
