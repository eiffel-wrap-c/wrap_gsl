@echo on
title post_process script

rem copy c file is there any
rem copy .\manual_wrapper\c\src\*.c  .\generated_wrapper\c\src -- example

rem copy Makefile script
rem copy Makefile-win.SH  .\generated_wrapper\c\src -- example
cd generated_wrapper/eiffel/
del /f gsl_interp_functions_api.e
del /f iobuf_struct_api.e 
del /f gsl_matrix_char_functions_api.e
del /f gsl_matrix_complex_double_functions_api.e
del /f gsl_matrix_complex_float_functions_api.e
del /f gsl_matrix_complex_long_double_functions_api.e
del /f gsl_matrix_double_functions_api.e
del /f gsl_matrix_float_functions_api.e
del /f gsl_matrix_int_functions_api.e
del /f gsl_matrix_long_double_functions_api.e
del /f gsl_matrix_long_functions_api.e
del /f gsl_matrix_short_functions_api.e
del /f gsl_matrix_uchar_functions_api.e
del /f gsl_matrix_uint_functions_api.e
del /f gsl_matrix_ulong_functions_api.e
del /f gsl_matrix_ushort_functions_api.e
del /f gsl_rng_functions_api.e
del /f gsl_vector_char_functions_api.e
del /f gsl_vector_complex_double_functions_api.e
del /f gsl_vector_complex_float_functions_api.e
del /f gsl_vector_double_functions_api.e
del /f gsl_vector_complex_long_double_functions_api.e
del /f gsl_vector_float_functions_api.e
del /f gsl_vector_int_functions_api.e
del /f gsl_vector_long_double_functions_api.e
del /f gsl_vector_long_functions_api.e
del /f gsl_vector_short_functions_api.e
del /f gsl_vector_uchar_functions_api.e
del /f gsl_vector_uint_functions_api.e
del /f gsl_vector_ulong_functions_api.e
del /f gsl_vector_ushort_functions_api.e

cd ..
cd ..


cd generated_wrapper/c/src/
finish_freezing -library
