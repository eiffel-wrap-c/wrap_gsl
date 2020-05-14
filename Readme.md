# wrap_gsl
`wrap_gsl` is an Eiffel binding of [GSL C API](https://www.gnu.org/software/gsl/doc/html/index.html) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

The GNU Scientific Library (GSL) is a collection of routines for numerical computing.


## Requirements 

*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [GSL C API](https://www.gnu.org/software/gsl/doc/html/index.html)


## Download and  Install

### Linux

Download: the file 

 ftp://ftp.gnu.org/gnu/gsl/gsl-2.6.tar.gz


Place the file in your home directory and unpack the file with the following command:

	tar -zxvf gsl-2.6.tar.gz	

This will create a directory called gsl-2.6 in your home directory. Change to this directory.

	cd gsl-2.6

Now configure the installation

	./configure 

If there are no errors, compile the library. This step will take several minutes.

	make

Check and test the library before actually installing it.

	make check

If there are no errors, go ahead and install the library with:

	make install


Rebuild the ldconfig cache using
	
	sudo ldconfig

	
### Windows

Using vcpkg (https://github.com/microsoft/vcpkg) tool, you can install libgsl library

	vcpkg install gsl:x64-windows
	
Then copy the files `gsl.dll`, `gslcblas.dll`, `gslcblas.lib` and `gsl.lib` to `%LIBRARY_PATH%wrap_library/library/C/lib`
Where `%LIBRARY_PATH%` is where you clone/download `wrap_gsl` source code.
On windows if you are using a DLL be sure the DLL is in your PATH when you execute the examples.


## Status

Work in progress.


## Examples

### 1D Interpolation Examples 

* [Example 1](./examples/interpolation_examples_1d/example_1) 		`demonstrates the use of the interpolation and spline functions`
* [Example 2](./examples/interpolation_examples_1d/example_2) 		`demonstrates a periodic cubic spline with 4 data points`
* [Example 3](./examples/interpolation_examples_1d/example_3) 		`demonstrates the difference between the cubic spline, Akima, and Steffen interpolation types on a difficult dataset`


### Basis Splines Examples 

* [Example 1](./examples/basis_splines_examples/example_1) 		`computes a linear least squares fit to data using cubic B-spline basis functions with uniform breakpoints.`


### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	library/generated_wrapper/c/src 

and run

	finish_freezing --library

It will copy the C lib `eif_gsl.a` to `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib/` or `eif_gsl.lib` to `$ECF_CONFIG_PATH/C/spec/$ISE_C_COMPILER/$ISE_PLATFORM/lib`

