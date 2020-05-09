note
	description: "Object representing functions for the computation of smoothing basis splines"
	date: "$Date$"
	revision: "$Revision$"
	eis: "name=Basis Splines", "src=https://www.gnu.org/software/gsl/doc/html/bspline.html", "protocol=uri"

class
	GSL_BSPLINE

inherit

	GSL_BSPLINE_FUNCTIONS_API
		rename
			gsl_bspline_alloc as gsl_bspline_alloc_api
		end


feature -- Access

	gsl_bspline_alloc (k: INTEGER; nbreak: INTEGER): GSL_BSPLINE_WORKSPACE_STRUCT_API
			-- Allocates a workspace for computing B-splines of order k.
			-- The number of breakpoints is given by nbreak.
		note
			eis: "name=gsl_bspline_alloc", "src=https://www.gnu.org/software/gsl/doc/html/bspline.html?highlight=gsl_bspline_alloc#c.gsl_bspline_workspace", "protocol=uri"
		do
			create Result.make_by_pointer (gsl_bspline_alloc_api (k, nbreak))
		ensure
			instance_free: class
		end
end
