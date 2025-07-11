# -*- Python -*-

import os
import platform
import re
import subprocess
import tempfile

import lit.formats
import lit.util

from lit.llvm import llvm_config
from lit.llvm.subst import ToolSubst
from lit.llvm.subst import FindTool

# Configuration file for the 'lit' test runner.

# name: The name of this test suite.
config.name = "VERIF"

config.test_format = lit.formats.ShTest(not llvm_config.use_lit_shell)

# suffixes: A list of file extensions to treat as test files.
config.suffixes = [".mlir", ".lit"]

# test_source_root: The root path where tests are located.
config.test_source_root = os.path.dirname(__file__)

# test_exec_root: The root path where tests should be run.
config.test_exec_root = os.path.join(config.verif_obj_root, "test")

config.substitutions.append(("%PATH%", config.environment["PATH"]))
config.substitutions.append(("%shlibext", config.llvm_shlib_ext))
config.substitutions.append(("%add_epilogue", os.path.join(config.verif_src_root, "script/add_epilogue.py")))

config.substitutions.append(("%pastchecker_path",
        f"{lit_config.params['PAST_DIR']}/src/pastchecker"))
# pastchecker with arguments
config.substitutions.append(("%pastchecker",
        f"{lit_config.params['PAST_DIR']}/src/pastchecker --enable-preprocessor --timing-mode --verbose --enable-subtrees --happens-before"))

llvm_config.with_system_environment(["HOME", "INCLUDE", "LIB", "TMP", "TEMP"])

llvm_config.use_default_substitutions()

# excludes: A list of directories to exclude from the testsuite. The 'Inputs'
# subdirectories contain auxiliary inputs for various tests in their parent
# directories.
config.excludes = ["Inputs", "Examples", "CMakeLists.txt", "README.txt", "LICENSE.txt"]

# test_exec_root: The root path where tests should be run.
config.test_exec_root = os.path.join(config.verif_obj_root, "test")
config.verif_tools_dir = os.path.join(config.verif_obj_root, "bin")
config.verif_libs_dir = os.path.join(config.verif_obj_root, "lib")

config.substitutions.append(("%verif_libs", config.verif_libs_dir))

# Tweak the PATH to include the tools dir.
llvm_config.with_environment("PATH", config.llvm_tools_dir, append_path=True)

tool_dirs = [
    config.llvm_tools_dir,
    config.verif_tools_dir,
    os.path.join(config.verif_src_root, 'script'),
]

tools = [
    "mlir-opt",
    "verif-opt",
    "verif-translate",
    "peqc-mlir.py"
]

llvm_config.add_tool_substitutions(tools, tool_dirs)

if 'AIR' in lit_config.params:
    config.available_features.add('air')

llvm_config.with_environment(
    "PYTHONPATH",
    [
        os.path.join(config.mlir_obj_dir, "python_packages", "verif"),
    ],
    append_path=True,
)
