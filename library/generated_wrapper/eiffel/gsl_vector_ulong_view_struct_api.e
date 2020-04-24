note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GSL_VECTOR_ULONG_VIEW_STRUCT_API

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

	vector: GSL_VECTOR_ULONG_STRUCT_API
			-- Access member `vector`
		require
			exists: exists
		do
			create Result.make_by_pointer ( c_vector(item) )
		ensure
			result_not_void: Result.item = c_vector (item) 
		end

	set_vector (a_value: GSL_VECTOR_ULONG_STRUCT_API) 
			-- Set member `vector`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_vector (item, a_value.item)
		ensure
			vector_set: vector.item = a_value.item
		end

feature {NONE} -- Implementation wrapper for struct _gsl_vector_ulong_view

	sizeof_external: INTEGER 
		external
			"C inline use <eif_gsl.h>"
		alias
			"sizeof(_gsl_vector_ulong_view)"
		end

	c_vector (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				&((_gsl_vector_ulong_view*)$an_item)->vector
			]"
		end

	set_c_vector (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((_gsl_vector_ulong_view*)$an_item)->vector =  *(gsl_vector_ulong*)$a_value
			]"
		end

end
