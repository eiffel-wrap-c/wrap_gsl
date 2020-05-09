note
	description: "Summary description for {GSL_VECTOR_DOUBLE}."
	date: "$Date$"
	revision: "$Revision$"

class
	GSL_VECTOR_DOUBLE

inherit

	GSL_VECTOR_DOUBLE_FUNCTIONS_API
		rename
			gsl_vector_alloc as gsl_vector_alloc_api
		end

feature -- Access

	gsl_vector_alloc (n: INTEGER): GSL_VECTOR_STRUCT_API
			-- Creates a vector of length n,
			-- Result a newly initialized vector struct `GSL_VECTOR_STRUCT_API`.
		note
			eis: "name=gsl_vector_alloc", "src=https://www.gnu.org/software/gsl/doc/html/vectors.html", "protocol=uri"
		require
			valid_size: n >= 0
		do
			create Result.make_by_pointer (gsl_vector_alloc_api (n))
		ensure
			instsance_free: class
		end

end
