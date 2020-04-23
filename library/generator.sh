#!/bin/sh
#Script to automate WrapC development process.

#Compiling with -D _Float128=double to avoid the issue with extern int __fpclassifyf128 (_Float128 __value)
#Workaround to make it work based on this thread https://github.com/samee/obliv-c/issues/48
#--c_compile_options=-D _Float128=double `pkg-config --cflags gsl`
wrap_c --verbose --c_compile_options="`pkg-config --cflags gsl` -D _Float128=double"  --script_pre_process=pre_script.sh --script_post_process=post_script.sh  --output-dir=./generated_wrapper --full-header=./manual_wrapper/c/include/eif_gsl.h --config=config.xml

