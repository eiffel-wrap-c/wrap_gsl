-- enum wrapper
class CBLAS_DIAG_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cblasnonunit or a_value = cblasunit
		end

	cblasnonunit: INTEGER 
		external
			"C inline use <eif_gsl.h>"
		alias
			"CblasNonUnit"
		end

	cblasunit: INTEGER 
		external
			"C inline use <eif_gsl.h>"
		alias
			"CblasUnit"
		end

end
