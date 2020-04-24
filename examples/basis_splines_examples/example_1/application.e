note
	description: "[
				Eiffel version of C 
				The following program computes a linear least squares fit to data using cubic B-spline basis functions with uniform breakpoints.
				 The data is generated from the curve y(x) = \cos{(x)} \exp{(-x/10)} on the interval [0, 15] with Gaussian noise added.
				
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
			i,j: INTEGER
			gsl_inter: GSL_INTERPOLATION
			gsl_spline: GSL_SPLINE_FUNCTIONS_API
			res: INTEGER
			l_n, l_ncoeffs, l_nbreak: INTEGER
			bw: GSL_BSPLINE_WORKSPACE_STRUCT_API
			bv: GSL_VECTOR_STRUCT_API
			dy: REAL_64
			y, x, c, w: GSL_VECTOR_STRUCT_API
			xm, cov: GSL_MATRIX_STRUCT_API
			mw: GSL_MULTIFIT_LINEAR_WORKSPACE_STRUCT_API
			chisq, Rsq, dof, tss: REAL_64
			gsl_rng: GSL_RNG
			gsl_bsplines: GSL_BSPLINE
			gsl_vector_double: GSL_VECTOR_DOUBLE
			gsl_matrix_double: GSL_MATRIX_DOUBLE
			gsl_multifit: GSL_MULTIFIT
			sigma: REAL_64
			gsl_randist: GSL_RANDIST_FUNCTIONS_API
			gsl_statistics: GSL_STATISTICS_DOUBLE_FUNCTIONS_API
			bj, yerr: REAL_64
		do
			l_n := N
  			l_ncoeffs := NCOEFFS
  			L_nbreak := NBREAK

  			create gsl_rng
  				-- TODO check if gsl_rng_env_setup could return a default pointer.
  			if
  				attached {GSL_RNG_TYPE_STRUCT_API} gsl_rng.gsl_rng_env_setup as gnr_type and then
  				attached {GSL_RNG_STRUCT_API} gsl_rng.gsl_rng_alloc(gsl_rng.gsl_rng_default) as r
  			then

				create gsl_bsplines
					-- allocate a cubic bspline workspace (k = 4)
				create gsl_vector_double
				create gsl_matrix_double
				create gsl_multifit
				create gsl_randist

				bw := gsl_bsplines.gsl_bspline_alloc(4, nbreak)
				bv := gsl_vector_double.gsl_vector_alloc(ncoeffs) -- bv = B

				x := gsl_vector_double.gsl_vector_alloc (n)
				y := gsl_vector_double.gsl_vector_alloc (n)
				xm := gsl_matrix_double.gsl_matrix_alloc (n, ncoeffs)
				c := gsl_vector_double.gsl_vector_alloc (ncoeffs)
				w := gsl_vector_double.gsl_vector_alloc(n)

				cov := gsl_matrix_double.gsl_matrix_alloc (ncoeffs, ncoeffs)
				mw := gsl_multifit.gsl_multifit_linear_alloc(n, ncoeffs)

					-- this is the data to be fitted.
				from
					i := 0
				until
					i = N
				loop
					xi := (15.0 / (N - 1)) * i
					yi := {DOUBLE_MATH}.cosine (xi) * {DOUBLE_MATH}.exp (-0.1 * xi)
					sigma := 0.1 + yi
					dy := gsl_randist.gsl_ran_gaussian(r, sigma)
					yi := yi + dy
					gsl_vector_double.gsl_vector_set (x, i, xi)
					gsl_vector_double.gsl_vector_set (y, i, yi)
					gsl_vector_double.gsl_vector_set (w, i, 1.0 / (sigma * sigma))
					print (xi.out + " " + yi.out + "%N")
					i := i + 1
				end

					-- use uniform breakpoints on [0, 15]
				if gsl_bsplines.gsl_bspline_knots_uniform (0.0, 15.0, bw) /= 0 then
					print ("Error calling gsl_bspline_knots_uniform%N")
					{EXCEPTIONS}.die (1)
				end

				from
					i := 0
				until
					i = N
				loop
					xi := gsl_vector_double.gsl_vector_get (x, i)
						--  compute B_j(xi) for all j
					if gsl_bsplines.gsl_bspline_eval(xi, bv, bw) /= 0 then
						print ("Error calling gsl_bspline_eval%N")
						{EXCEPTIONS}.die (1)
					end
						-- fill in row i of xm
					from
						j := 0
					until
						j = l_ncoeffs
					loop
						bj :=  gsl_vector_double.gsl_vector_get (bv, j)
						gsl_matrix_double.gsl_matrix_set (xm, i, j, bj)
						j := j + 1
					end
					i := i + 1
				end
					--  do the fit
				res := gsl_multifit.gsl_multifit_wlinear (xm, w, y, c, cov, $chisq, mw)

				create gsl_statistics
				dof := l_n - l_ncoeffs
				-- tss := gsl_statistics.gsl_stats_wtss (vector_to_array_of_double (w), 1, vector_to_array_of_double (y), 1, y.size)
				tss := gsl_statistics.c_gsl_stats_wtss (w.data, 1, y.data, 1, y.size)
				rsq := 1.0 - chisq / tss;


				print("%N%N")

 					-- output the smoothed curve
 				from
 					xi := 0.0
 					yi := 0.0
 				until
 					xi >= 15.0
 				loop
					res := gsl_bsplines.gsl_bspline_eval(xi, bv, bw)
					res := gsl_multifit.gsl_multifit_linear_est(bv, c, cov, $yi, $yerr)
					print (xi.out + " " + yi.out + "%N")
					xi := xi + 0.1
 				end

			  gsl_rng.gsl_rng_free(r)
			  gsl_bsplines.gsl_bspline_free(bw);
			  gsl_vector_double.gsl_vector_free(bv);
			  gsl_vector_double.gsl_vector_free(x);
			  gsl_vector_double.gsl_vector_free(y);
			  gsl_matrix_double.gsl_matrix_free(xm);
			  gsl_vector_double.gsl_vector_free(c);
			  gsl_vector_double.gsl_vector_free(w);
			  gsl_matrix_double.gsl_matrix_free(cov);
			  gsl_multifit.gsl_multifit_linear_free(mw);
			end
		end


feature -- Utility

	vector_to_array_of_double (v: GSL_VECTOR_STRUCT_API): ARRAY [REAL_64]
		local
			gsl_vector: GSL_VECTOR_DOUBLE
			i: INTEGER
		do
			create gsl_vector
			create Result.make (1, v.size)
			from
				i := 0
			until
				i = v.size
			loop
				Result [i+1] := gsl_vector.gsl_vector_get (v, i)
				i := i + 1
			end
		end

feature -- Constants


	N: INTEGER = 200
		-- number of data points to fit.

	NCOEFFS: INTEGER = 12
		-- number of fit coefficients.


	NBREAK: INTEGER = 10
		-- Defined as NBREAK   (NCOEFFS - 2)
		-- nbreak = ncoeffs + 2 - k = ncoeffs - 2 since k = 4
end
