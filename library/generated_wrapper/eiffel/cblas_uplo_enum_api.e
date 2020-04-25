-- enum wrapper
class CBLAS_UPLO_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = cblasupper or a_value = cblaslower
		end

	cblasupper: INTEGER 
		external
			"C inline use <eif_gsl.h>"
		alias
			"CblasUpper"
		end

	cblaslower: INTEGER 
		external
			"C inline use <eif_gsl.h>"
		alias
			"CblasLower"
		end

end
