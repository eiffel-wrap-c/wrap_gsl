note
	description: "Object that represent functions which perform least squares fits to a linear model"
	date: "$Date$"
	revision: "$Revision$"
	eis: "name=Multi-parameter regression", "src=https://www.gnu.org/software/gsl/doc/html/lls.html?highlight=gsl_multifit#multi-parameter-regression", "protocol=uri"

class
	GSL_MULTIFIT

inherit

	GSL_MULTIFIT_FUNCTIONS_API
		rename
			gsl_multifit_linear_alloc as gsl_multifit_linear_alloc_api
		end

feature -- Access

	gsl_multifit_linear_alloc (n: INTEGER; p: INTEGER):  GSL_MULTIFIT_LINEAR_WORKSPACE_STRUCT_API
			-- Allocates a workspace for fitting a model to a maximum of `n` observations using a maximum of `p` parameters.
		note
			eis:"name=gsl_multifit_linear_alloc", "src=https://www.gnu.org/software/gsl/doc/html/lls.html?highlight=gsl_multifit#c.gsl_multifit_linear_alloc", "protocol=uri"
		do
			create Result.make_by_pointer (gsl_multifit_linear_alloc_api (n,p))
		end


end
