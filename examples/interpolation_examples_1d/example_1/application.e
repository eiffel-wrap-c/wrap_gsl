note
	description: "[
				Eiffel version of C 
				The following program demonstrates the use of the interpolation and spline functions.
				It computes a cubic spline interpolation of the 10-point dataset (x_i, y_i) where x_i = i + \sin(i)/2 and y_i = i + \cos(i^2) for i = 0 \dots 9.
				
				The output is designed to be used with the GNU plotutils graph program:

				$ ./example_1 > interp.dat
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
			gsl_inter: GSL_INTERPOLATION
			gsl_spline: GSL_SPLINE_FUNCTIONS_API
			res: INTEGER
		do
			create gsl_inter
			create gsl_spline

			create y.make_filled (0.0, 1, 10)
			create x.make_filled (0.0, 1, 10)
  			print ("#M0,s=17%N")
  			from
  				i := 0
  			until
				i = 10
  			loop
				x[i+1] := i + {DOUBLE_MATH}.sine (i)
				y[i+1] := i + {DOUBLE_MATH}.cosine (i*i)
				print (x[i+1].out + " " + y [i + 1].out+ "%N")
				i := i + 1
  			end

			print ("#m=1,S=0%N")


			if
				attached {GSL_INTERP_ACCEL_STRUCT_API} gsl_inter.gsl_interp_accel_alloc as acc and then
				attached {GSL_SPLINE_STRUCT_API} gsl_spline.gsl_spline_alloc (gsl_inter.gsl_interp_cspline, 10) as spline
			then
				if  gsl_spline.gsl_spline_init (spline, from_array_of_real_64 (x), from_array_of_real_64(y), 10) /= 0 then
					print ("Error in gsl_spline_init%N")
					{EXCEPTIONS}.die (1)
				end
				from
					i :=1
					xi := x[1]
				until
					xi >= x [10]
				loop
					yi := gsl_spline.gsl_spline_eval (spline, xi, acc)
					print (xi.out + " " + yi.out+ "%N")
					xi := xi + 0.01
				end
				gsl_spline.gsl_spline_free (spline)
				gsl_inter.gsl_interp_accel_free (acc)
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
