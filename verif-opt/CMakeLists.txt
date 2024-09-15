get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)
set(LIBS
        ${dialect_libs}
        ${conversion_libs}
        MLIRArithDialect
        MLIROptLib
        MLIRVerif
        AIRDialect
        )
add_llvm_executable(verif-opt verif-opt.cpp)

llvm_update_compile_flags(verif-opt)
target_link_libraries(verif-opt PRIVATE ${LIBS})

mlir_check_all_link_libraries(verif-opt)
