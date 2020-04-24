note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GSL_MATRIX_LONG_DOUBLE_STRUCT_API

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

	size1: INTEGER
			-- Access member `size1`
		require
			exists: exists
		do
			Result := c_size1 (item)
		ensure
			result_correct: Result = c_size1 (item)
		end

	set_size1 (a_value: INTEGER) 
			-- Change the value of member `size1` to `a_value`.
		require
			exists: exists
		do
			set_c_size1 (item, a_value)
		ensure
			size1_set: a_value = size1
		end

	size2: INTEGER
			-- Access member `size2`
		require
			exists: exists
		do
			Result := c_size2 (item)
		ensure
			result_correct: Result = c_size2 (item)
		end

	set_size2 (a_value: INTEGER) 
			-- Change the value of member `size2` to `a_value`.
		require
			exists: exists
		do
			set_c_size2 (item, a_value)
		ensure
			size2_set: a_value = size2
		end

	tda: INTEGER
			-- Access member `tda`
		require
			exists: exists
		do
			Result := c_tda (item)
		ensure
			result_correct: Result = c_tda (item)
		end

	set_tda (a_value: INTEGER) 
			-- Change the value of member `tda` to `a_value`.
		require
			exists: exists
		do
			set_c_tda (item, a_value)
		ensure
			tda_set: a_value = tda
		end

	data: POINTER
			-- Access member `data`
		require
			exists: exists
		do
			Result := c_data (item)
		ensure
			result_correct: Result = c_data (item)
		end

	set_data (a_value: POINTER) 
			-- Change the value of member `data` to `a_value`.
		require
			exists: exists
		do
			set_c_data (item, a_value)
		ensure
			data_set: a_value = data
		end

	block: detachable GSL_BLOCK_LONG_DOUBLE_STRUCT_STRUCT_API 
			-- Access member `block`
		require
			exists: exists
		do
			if attached c_block (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_block (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_block (item) 
		end

	set_block (a_value: GSL_BLOCK_LONG_DOUBLE_STRUCT_STRUCT_API) 
			-- Set member `block`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_block (item, a_value.item)
		ensure
			block_set: attached block as l_value implies l_value.item = a_value.item
		end

	owner: INTEGER
			-- Access member `owner`
		require
			exists: exists
		do
			Result := c_owner (item)
		ensure
			result_correct: Result = c_owner (item)
		end

	set_owner (a_value: INTEGER) 
			-- Change the value of member `owner` to `a_value`.
		require
			exists: exists
		do
			set_c_owner (item, a_value)
		ensure
			owner_set: a_value = owner
		end

feature {NONE} -- Implementation wrapper for struct gsl_matrix_long_double

	sizeof_external: INTEGER 
		external
			"C inline use <eif_gsl.h>"
		alias
			"sizeof(gsl_matrix_long_double)"
		end

	c_size1 (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_matrix_long_double*)$an_item)->size1
			]"
		end

	set_c_size1 (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_matrix_long_double*)$an_item)->size1 =  (size_t)$a_value
			]"
		ensure
			size1_set: a_value = c_size1 (an_item)
		end

	c_size2 (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_matrix_long_double*)$an_item)->size2
			]"
		end

	set_c_size2 (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_matrix_long_double*)$an_item)->size2 =  (size_t)$a_value
			]"
		ensure
			size2_set: a_value = c_size2 (an_item)
		end

	c_tda (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_matrix_long_double*)$an_item)->tda
			]"
		end

	set_c_tda (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_matrix_long_double*)$an_item)->tda =  (size_t)$a_value
			]"
		ensure
			tda_set: a_value = c_tda (an_item)
		end

	c_data (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_matrix_long_double*)$an_item)->data
			]"
		end

	set_c_data (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_matrix_long_double*)$an_item)->data =  (long double*)$a_value
			]"
		ensure
			data_set: a_value = c_data (an_item)
		end

	c_block (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_matrix_long_double*)$an_item)->block
			]"
		end

	set_c_block (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_matrix_long_double*)$an_item)->block =  (gsl_block_long_double*)$a_value
			]"
		ensure
			block_set: a_value = c_block (an_item)
		end

	c_owner (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_matrix_long_double*)$an_item)->owner
			]"
		end

	set_c_owner (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_matrix_long_double*)$an_item)->owner =  (int)$a_value
			]"
		ensure
			owner_set: a_value = c_owner (an_item)
		end

end
