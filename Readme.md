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

SUGGESTION: Use GitBash command prompt for handling everything Git-related. The process described below will generally be performed in this context.


#### vcpkg notes

Be aware that your vcpkg may not be up-to-date. For example, you may get a warning similar to the one below:

	Warning: Different source is available for vcpkg (2020.2.4 -> 2020.6.15). Use .\bootstrap-vcpkg.bat to update.
	
If you get such a warning, you will want to do as the warning suggests: Run the `bootstrap-vcpkg.bat` from the Gitbash command prompt in the vcpkg directory. When you do, you will see something similar to the following:

	$ ./bootstrap-vcpkg.bat
	
	Building vcpkg.exe ...
	
	...
	
	Building vcpkg.exe... done.

	Telemetry
	---------
	vcpkg collects usage data in order to help us improve your experience.
	The data collected by Microsoft is anonymous.
	You can opt-out of telemetry by re-running the bootstrap-vcpkg script with -disableMetrics,
	passing --disable-metrics to vcpkg on the command line,
	or by setting the VCPKG_DISABLE_METRICS environment variable.
	
	Read more about vcpkg telemetry at docs/about/privacy.md
	
Now that your vcpkg.exe is up-to-date fully, your `vcpkg install` command will work as expected. 

#### vcpkg install results

When the `vcpkg install gsl:x64-windows` command successfully completes, the results can be found in:

	vcpkg/buildtrees/gsl/x64-windows-rel

The next step is to copy the files `gsl.dll`, `gslcblas.dll`, `gslcblas.lib` and `gsl.lib` in the "rel" directory (above) to `%LIBRARY_PATH%wrap_library/library/C/lib`

Where `%LIBRARY_PATH%` is where you clone/download `wrap_gsl` source code.
On windows if you are using a DLL be sure the DLL is in your PATH when you execute the examples.

NOTE: You will most likely find that the 'lib' directory under your `wrap_gsl/library/C` does not exist and you will need to create that folder.

#### post-vcpkg glue code

After successful creation of the `.dll` and `.lib` files (above), your last step is to ensure the `glue code` has been created. These instructions were written on the basis of Microsoft Visual Studio 2019. Because this final step depends on a local C compiler and the example is based on VS-2019, we suggest using the `x86_x64_Cross_Tools_Command_Prompt_for_VS_2019` to ensure the MSC compiler is in a properly formed environment.

NOTE: If you have not already created a PATH to the EiffelStudio `bin` directory with `finish_freezing.exe` in it, you will want to do so from within the VS-2019 command prompt (above). For example: This example was performed on a Windows 10 box using x64 using EiffelStudio 20.05 Standard (vs GPL), so the temporarily added PATH looks like this:

	set PATH=%PATH%;C:\Program Files\Eiffel Software\EiffelStudio 20.05 Standard\studio\spec\win64\bin

Once your environment understands where to find `finish_freezing`, you can now successfully execute it. To do so successfully, you need to be in the correct directory. In this example, we are in the directory shown below and issue the `finish_freezing -library` command as shown below:

	wrap_gsl\library\generated_wrapper\c\src>finish_freezing -library

Part of the resulting execution of finish_freezing will be:

	Creating ..\..\..\C\spec\msc_vc140\win64\lib
        copy eif_gsl.lib ..\..\..\C\spec\msc_vc140\win64\lib\eif_gsl.lib
        1 file(s) copied.

The `eif_gsl.lib` file is required for the Eiffel `external` features to be able to reach out and use the compiled GSL C API code. You will also find a reference to this file in the `wrapc_gsl.ecf` Eiffel project file. This is a required dependency and all of the work above has been to get us to this goal.

At this point, you ought to be able to open EiffelStudio and add the `wrapc_gsl.ecf` using the `wrapc_gsl_tests` target and successfully compile (or freeze) and then run the `version test` successfully!


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

