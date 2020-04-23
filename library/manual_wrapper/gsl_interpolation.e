note
	description: "Summary description for {GSL_INTERP}."
	date: "$Date$"
	revision: "$Revision$"
	EIS: "name=Interpolation", "src=https://www.gnu.org/software/gsl/doc/html/interp.html", "protocol=uri"

class
	GSL_INTERPOLATION

inherit

	GSL_INTERP_FUNCTIONS_API


feature -- Access

	gsl_interp_cspline: GSL_INTERP_TYPE_STRUCT_API
		note
			eis:"name=gsl_interp_cspline", "src=https://www.gnu.org/software/gsl/doc/html/interp.html?highlight=gsl_interp_cspline#c.gsl_interp_cspline", "protocol=uri"
		do
			create Result.make_by_pointer (c_gsl_interp_cspline)
		end

	gsl_interp_steffen:	GSL_INTERP_TYPE_STRUCT_API
		note
			eis:"name=gsl_interp_steffen", "src=https://www.gnu.org/software/gsl/doc/html/interp.html?highlight=gsl_interp_cspline#c.gsl_interp_steffen", "protocol=uri"
		do
			create Result.make_by_pointer (c_gsl_interp_steffen)
		end

	gsl_interp_linear:	GSL_INTERP_TYPE_STRUCT_API
		note
			eis:"name=gsl_interp_linear", "src=https://www.gnu.org/software/gsl/doc/html/interp.html?highlight=gsl_interp_linear#c.gsl_interp_linear", "protocol=uri"
		do
			create Result.make_by_pointer (c_gsl_interp_linear)
		end

	gsl_interp_polynomial:	GSL_INTERP_TYPE_STRUCT_API
		note
			eis:"name=gsl_interp_polynomial", "src=https://www.gnu.org/software/gsl/doc/html/interp.html?highlight=gsl_interp_polynomial#c.gsl_interp_polynomial", "protocol=uri"
		do
			create Result.make_by_pointer (c_gsl_interp_polynomial)
		end

	gsl_interp_cspline_periodic: GSL_INTERP_TYPE_STRUCT_API
		note
			eis:"name=gsl_interp_cspline_periodic", "src=https://www.gnu.org/software/gsl/doc/html/interp.html?highlight=gsl_interp_cspline_periodic#c.gsl_interp_cspline_periodic", "protocol=uri"
		do
			create Result.make_by_pointer (c_gsl_interp_cspline_periodic)
		end

	gsl_interp_akima: GSL_INTERP_TYPE_STRUCT_API
		note
			eis:"name=gsl_interp_akima", "src=https://www.gnu.org/software/gsl/doc/html/interp.html?highlight=gsl_interp_akima#c.gsl_interp_akima", "protocol=uri"
		do
			create Result.make_by_pointer (c_gsl_interp_akima)
		end

	gsl_interp_akima_periodic: GSL_INTERP_TYPE_STRUCT_API
		note
			eis:"name=gsl_interp_akima_periodic", "src=https://www.gnu.org/software/gsl/doc/html/interp.html?highlight=gsl_interp_akima_periodic#c.gsl_interp_akima_periodic", "protocol=uri"
		do
			create Result.make_by_pointer (c_gsl_interp_akima_periodic)
		end

feature -- External

	c_gsl_interp_cspline: POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"gsl_interp_cspline"
		end

	c_gsl_interp_steffen: POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"gsl_interp_steffen"
		end

	c_gsl_interp_linear: POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"gsl_interp_linear"
		end

	c_gsl_interp_polynomial: POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"gsl_interp_polynomial"
		end

	c_gsl_interp_cspline_periodic: POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"gsl_interp_cspline_periodic"
		end

	c_gsl_interp_akima: POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"gsl_interp_akima"
		end

	c_gsl_interp_akima_periodic: POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"gsl_interp_akima_periodic"
		end
end
