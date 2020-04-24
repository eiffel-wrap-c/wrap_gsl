note
	description: "Summary description for {GSL_MATRIX_DOUBLE}."
	date: "$Date$"
	revision: "$Revision$"

class
	GSL_MATRIX_DOUBLE

inherit

	GSL_MATRIX_DOUBLE_FUNCTIONS_API
		rename
			gsl_matrix_alloc as gsl_matrix_alloc_api
		end

feature -- Access

	gsl_matrix_alloc (n1: INTEGER; n2: INTEGER): GSL_MATRIX_STRUCT_API
			-- Creates a matrix of size n1 rows by n2 columns.
			-- Result a newly initialized matrix struct.
		note
			eis: "name=gsl_matrix_alloc", "src=https://www.gnu.org/software/gsl/doc/html/vectors.html?highlight=gsl_matrix_alloc#c.gsl_matrix_alloc", "protocol=uri"
		require
			valid_values: n1 >= 0 and n2 >= 0
		do
			create Result.make_by_pointer (gsl_matrix_alloc_api (n1, n2))
		end

end
