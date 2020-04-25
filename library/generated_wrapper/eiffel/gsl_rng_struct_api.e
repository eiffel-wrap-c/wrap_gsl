note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GSL_RNG_STRUCT_API

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

	type: detachable GSL_RNG_TYPE_STRUCT_API 
			-- Access member `type`
		require
			exists: exists
		do
			if attached c_type (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_type (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_type (item) 
		end

	set_type (a_value: GSL_RNG_TYPE_STRUCT_API) 
			-- Set member `type`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_type (item, a_value.item)
		ensure
			type_set: attached type as l_value implies l_value.item = a_value.item
		end

	state: POINTER
			-- Access member `state`
		require
			exists: exists
		do
			Result := c_state (item)
		ensure
			result_correct: Result = c_state (item)
		end

	set_state (a_value: POINTER) 
			-- Change the value of member `state` to `a_value`.
		require
			exists: exists
		do
			set_c_state (item, a_value)
		ensure
			state_set: a_value = state
		end

feature {NONE} -- Implementation wrapper for struct gsl_rng

	sizeof_external: INTEGER 
		external
			"C inline use <eif_gsl.h>"
		alias
			"sizeof(gsl_rng)"
		end

	c_type (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_rng*)$an_item)->type
			]"
		end

	set_c_type (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_rng*)$an_item)->type =  (gsl_rng_type const*)$a_value
			]"
		ensure
			type_set: a_value = c_type (an_item)
		end

	c_state (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_rng*)$an_item)->state
			]"
		end

	set_c_state (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_rng*)$an_item)->state =  (void*)$a_value
			]"
		ensure
			state_set: a_value = c_state (an_item)
		end

end