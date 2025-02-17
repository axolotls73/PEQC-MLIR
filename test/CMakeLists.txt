llvm_canonicalize_cmake_booleans(
  MLIR_ENABLE_BINDINGS_PYTHON
)

configure_lit_site_cfg(
  ${CMAKE_CURRENT_SOURCE_DIR}/lit.site.cfg.py.in
  ${CMAKE_CURRENT_BINARY_DIR}/lit.site.cfg.py
  MAIN_CONFIG
  ${CMAKE_CURRENT_SOURCE_DIR}/lit.cfg.py
)

set(VERIF_TEST_DEPENDS
  FileCheck count not
  verif-opt
  verif-translate
  VerifPlugin
)

set(LIT_ARGS "--show-xfail --timeout 10 --param PAST_DIR=${PAST_DIR} -j 1")
if (COMPILE_WITH_AIR)
  set(LIT_ARGS "${LIT_ARGS} --param AIR")
endif()

add_lit_testsuite(check-verif "Running the verif regression tests"
  ${CMAKE_CURRENT_BINARY_DIR}
  DEPENDS ${VERIF_TEST_DEPENDS}
  ARGS ${LIT_ARGS}
)
set_target_properties(check-verif PROPERTIES FOLDER "Tests")

add_lit_testsuites(VERIF ${CMAKE_CURRENT_SOURCE_DIR} DEPENDS ${VERIF_TEST_DEPENDS})

