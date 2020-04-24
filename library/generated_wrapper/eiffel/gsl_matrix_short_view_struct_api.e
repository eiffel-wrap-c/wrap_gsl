note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GSL_MATRIX_SHORT_VIEW_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	matrix: GSL_MATRIX_SHORT_STRUCT_API
			-- Access member `matrix`
		require
			exists: exists
		do
			create Result.make_by_pointer ( c_matrix(item) )
		ensure
			result_not_void: Result.item = c_matrix (item) 
		end

	set_matrix (a_value: GSL_MATRIX_SHORT_STRUCT_API) 
			-- Set member `matrix`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_matrix (item, a_value.item)
		ensure
			matrix_set: matrix.item = a_value.item
		end

feature {NONE} -- Implementation wrapper for struct _gsl_matrix_short_view

	sizeof_external: INTEGER 
		external
			"C inline use <eif_gsl.h>"
		alias
			"sizeof(_gsl_matrix_short_view)"
		end

	c_matrix (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				&((_gsl_matrix_short_view*)$an_item)->matrix
			]"
		end

	set_c_matrix (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((_gsl_matrix_short_view*)$an_item)->matrix =  *(gsl_matrix_short*)$a_value
			]"
		end

end
