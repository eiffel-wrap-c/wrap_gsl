#!/bin/sh
# Post processing script

# copy c file is there any
# cp ./manual_wrapper/c/src/*.c  ./generated_wrapper/c/src           --example
# cp ./manual_wrapper/c/include/*.h  ./generated_wrapper/c/include		


#copy Makefile
#cp Makefile.SH  ./generated_wrapper/c/src                          --example

cd generated_wrapper/eiffel/
rm gsl_interp_functions_api.e
rm gsl_matrix_char_functions_api.e
rm gsl_matrix_complex_double_functions_api.e
rm gsl_matrix_complex_float_functions_api.e
rm gsl_matrix_complex_long_double_functions_api.e
rm gsl_matrix_double_functions_api.e
rm gsl_matrix_float_functions_api.e
rm gsl_matrix_int_functions_api.e
rm gsl_matrix_long_double_functions_api.e
rm gsl_matrix_long_functions_api.e
rm gsl_matrix_short_functions_api.e
rm gsl_matrix_uchar_functions_api.e
rm gsl_matrix_uint_functions_api.e
rm gsl_matrix_ulong_functions_api.e
rm gsl_matrix_ushort_functions_api.e
rm gsl_rng_functions_api.e
rm gsl_vector_char_functions_api.e
rm gsl_vector_complex_double_functions_api.e
rm gsl_vector_complex_float_functions_api.e
rm gsl_vector_double_functions_api.e
rm gsl_vector_complex_long_double_functions_api.e
rm gsl_vector_float_functions_api.e
rm gsl_vector_int_functions_api.e
rm gsl_vector_long_double_functions_api.e
rm gsl_vector_long_functions_api.e
rm gsl_vector_short_functions_api.e
rm gsl_vector_uchar_functions_api.e
rm gsl_vector_uint_functions_api.e
rm gsl_vector_ulong_functions_api.e
rm gsl_vector_ushort_functions_api.e
rm io_file_struct_api.e
rm rm io_codecvt_struct_api.e
rm io_marker_struct_api.e
rm io_wide_data_struct_api.e

rm 

cd ..
cd ..


cd generated_wrapper/c/src/
finish_freezing -library
