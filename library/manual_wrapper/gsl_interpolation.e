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

end
