note
	description: "Summary description for {GSL_VERSION}."
	date: "$Date$"
	revision: "$Revision$"

class
	GSL_VERSION

feature -- Access

	gsl_version: STRING
		local
			l_ptr: POINTER
		do
			Result := "Unkown"
			l_ptr := c_gsl_version
			if l_ptr /= default_pointer then
				create Result.make_from_c (l_ptr)
			end
		ensure
			instsance_free: class
		end

feature -- External

	c_gsl_version: POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"gsl_version"
		end
end
