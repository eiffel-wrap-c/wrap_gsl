note
	description: "[
				Eiffel version of C 
				
				The next program demonstrates a periodic cubic spline with 4 data points. Note that the first and last points must be supplied with the same y-value for a periodic spline.
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
			xi, yi: REAL_64
			x, y: ARRAY [REAL_64]
			i: INTEGER
			n: INTEGER
		do
			n := 4

			x:= {ARRAY [REAL_64]}<<0.00, 0.10,  0.27,  0.30>>
			Y:= {ARRAY [REAL_64]}<<0.15, 0.70, -0.10,  0.15>>
				-- y[1] = y[4] for periodic data

			if
				attached {GSL_INTERP_ACCEL_STRUCT_API} {GSL_INTERPOLATION}.gsl_interp_accel_alloc as acc and then
				attached {GSL_INTERP_TYPE_STRUCT_API} {GSL_INTERPOLATION}.gsl_interp_cspline_periodic as t and then
				attached {GSL_SPLINE_STRUCT_API} {GSL_SPLINE_FUNCTIONS_API}.gsl_spline_alloc (t, 4) as spline
			then
				print ("#m=0,S=5%N")
				from
					i := 1
				until
					i > N
				loop
					print (x[i].out + " " + y[i].out + "%N")
					i := i + 1
				end
				print ("#m=1,S=0%N")
				if {GSL_SPLINE_FUNCTIONS_API}.gsl_spline_init (spline, from_array_of_real_64(x), from_array_of_real_64 (y), n) /= 0 then
					print ("Error in gsl_spline_init%N")
					{EXCEPTIONS}.die (1)
				end
				from
					i := 1
				until
					i > 100
				loop
					xi := (1 - (i-1) / 100.0) * x[1] + ((i-1) / 100.0) * x[n]
					yi := {GSL_SPLINE_FUNCTIONS_API}.gsl_spline_eval (spline, xi, acc)
					print (xi.out + " " + yi.out + "%N")
					i := i + 1
				end
				{GSL_SPLINE_FUNCTIONS_API}.gsl_spline_free (spline)
				{GSL_INTERPOLATION}.gsl_interp_accel_free (acc)
			end
		end

	to_array_of_real_64 (mp: MANAGED_POINTER; count: INTEGER): ARRAY [REAL_64]
			-- Create an ARRAY[REAL_64] from a MANAGED_POINTER with
			-- `count` elements.
		local
			i: INTEGER
		do
			create Result.make_filled (0.0, 1, count)
			from
				i := 0
			until
				i = count
			loop
				Result.put (mp.read_real_64 ({PLATFORM}.real_64_bytes * i), i + 1)
				i := i + 1
			end
		ensure
			array_set: across Result as ic all mp.read_real_64 ((ic.cursor_index - 1) * {PLATFORM}.real_64_bytes ) = ic.item end
			instance_free: class
		end

	from_array_of_real_64 (arr: ARRAY [REAL_64]): MANAGED_POINTER
			-- Create a MANAGED_POINTER from an ARRAY [REAL_64].
		do
			create Result.make (arr.count * {PLATFORM}.real_64_bytes)
			across arr as ic
			loop
				Result.put_real_64 (ic.item, (ic.cursor_index - 1)*{PLATFORM}.real_64_bytes)
			end
		ensure
			managed_pointer_set: across arr as ic all Result.read_real_64 ((ic.cursor_index - 1) * {PLATFORM}.real_64_bytes ) = ic.item end
			instance_free: class
		end

end
