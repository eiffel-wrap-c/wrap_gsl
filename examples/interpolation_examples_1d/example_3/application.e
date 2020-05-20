note
	description: "[
				Eiffel version of C 
				
				The following  program illustrates the difference between the cubic spline, Akima, and Steffen interpolation types on a difficult dataset.
				The output is designed to be used with the GNU plotutils graph program:

				$ ./example_2 > interp.dat
				$ graph -T ps < interp.dat > interp.ps

				Or just upload the data to GNUPLot online http://gnuplot.respawned.com/#
				 ]"
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=example", "src=https://www.gnu.org/software/gsl/doc/html/interp.html?highlight=gsl_interp_steffen#d-interpolation-example-programs", "protocol=uri"

class
	APPLICATION

inherit
	ARGUMENTS_32

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			xi, yi_cubic, yi_akima, yi_steffen : REAL_64
			x, y: ARRAY [REAL_64]
			i: INTEGER
			n: INTEGER
		do
			n := 9

				-- this dataset is taken from  J. M. Hyman,
				-- Accurate Monotonicity preserving cubic interpolation,SIAM J. Sci. Stat. Comput. 4, 4, 1983.
			x := {ARRAY [REAL_64]} << 7.99, 8.09, 8.19, 8.7, 9.2,10.0, 12.0, 15.0, 20.0>>
            y := {ARRAY [REAL_64]} << 0.0, 2.76429e-5, 4.37498e-2, 0.169183, 0.469428, 0.943740, 0.998636, 0.999919, 0.999994 >>

			if
				attached {GSL_INTERP_ACCEL_STRUCT_API} {GSL_INTERPOLATION}.gsl_interp_accel_alloc as acc and then
				attached {GSL_SPLINE_STRUCT_API} {GSL_SPLINE_FUNCTIONS_API}.gsl_spline_alloc ({GSL_INTERPOLATION}.gsl_interp_cspline, n) as spline_cubic and then
				attached {GSL_SPLINE_STRUCT_API} {GSL_SPLINE_FUNCTIONS_API}.gsl_spline_alloc ({GSL_INTERPOLATION}.gsl_interp_akima, n) as spline_akima and then
				attached {GSL_SPLINE_STRUCT_API} {GSL_SPLINE_FUNCTIONS_API}.gsl_spline_alloc ({GSL_INTERPOLATION}.gsl_interp_steffen, n) as spline_steffen
			then
				if {GSL_SPLINE_FUNCTIONS_API}.gsl_spline_init (spline_cubic, {MANAGED_POINTER_HELPER}.from_array_of_real_64 (x), {MANAGED_POINTER_HELPER}.from_array_of_real_64 (y), n) /= 0 then
					print ("Error in gsl_spline_init with spline_cubic %N")
					{EXCEPTIONS}.die (1)
				end
				if {GSL_SPLINE_FUNCTIONS_API}.gsl_spline_init (spline_akima, {MANAGED_POINTER_HELPER}.from_array_of_real_64 (x), {MANAGED_POINTER_HELPER}.from_array_of_real_64 (y), n) /= 0 then
					print ("Error in gsl_spline_init with spline_akima %N")
					{EXCEPTIONS}.die (1)
				end
				if {GSL_SPLINE_FUNCTIONS_API}.gsl_spline_init (spline_steffen, {MANAGED_POINTER_HELPER}.from_array_of_real_64 (x), {MANAGED_POINTER_HELPER}.from_array_of_real_64(y), n) /= 0 then
					print ("Error in gsl_spline_init with spline_steffen %N")
					{EXCEPTIONS}.die (1)
				end

				from
					i := 1
				until
					i > N
				loop
					print (x[i].out + " " + y[i].out + "%N")
					i := i + 1
				end
				print("%N%N")

				from
					i := 1
				until
					i > 100
				loop
					xi := (1 - (i-1) / 100.0) * x[1] + ((i-1) / 100.0) * x[n]
					yi_cubic := {GSL_SPLINE_FUNCTIONS_API}.gsl_spline_eval (spline_cubic, xi, acc)
					yi_akima := {GSL_SPLINE_FUNCTIONS_API}.gsl_spline_eval (spline_akima, xi, acc)
					yi_steffen := {GSL_SPLINE_FUNCTIONS_API}.gsl_spline_eval (spline_steffen, xi, acc)
					 print (xi.out + " " + yi_cubic.out + " " + yi_akima.out + " " +  yi_steffen.out + "%N");
					i := i + 1
				end
				{GSL_SPLINE_FUNCTIONS_API}.gsl_spline_free (spline_cubic)
				{GSL_SPLINE_FUNCTIONS_API}.gsl_spline_free (spline_akima)
				{GSL_SPLINE_FUNCTIONS_API}.gsl_spline_free (spline_steffen)
				{GSL_INTERPOLATION}.gsl_interp_accel_free (acc)
			end
		end
end
