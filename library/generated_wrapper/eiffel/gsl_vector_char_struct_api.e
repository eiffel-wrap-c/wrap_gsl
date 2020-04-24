note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GSL_VECTOR_CHAR_STRUCT_API

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

	size: INTEGER
			-- Access member `size`
		require
			exists: exists
		do
			Result := c_size (item)
		ensure
			result_correct: Result = c_size (item)
		end

	set_size (a_value: INTEGER) 
			-- Change the value of member `size` to `a_value`.
		require
			exists: exists
		do
			set_c_size (item, a_value)
		ensure
			size_set: a_value = size
		end

	stride: INTEGER
			-- Access member `stride`
		require
			exists: exists
		do
			Result := c_stride (item)
		ensure
			result_correct: Result = c_stride (item)
		end

	set_stride (a_value: INTEGER) 
			-- Change the value of member `stride` to `a_value`.
		require
			exists: exists
		do
			set_c_stride (item, a_value)
		ensure
			stride_set: a_value = stride
		end

	data:  detachable STRING
			-- Access member `data`
		require
			exists: exists
		do
			if attached c_data (item) as l_ptr then
				Result := (create {C_STRING}.make_by_pointer (l_ptr)).string
			end
		ensure
			result_void: Result = Void implies c_data (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_data (a_value: STRING) 
			-- Change the value of member `data` to `a_value`.
		require
			exists: exists
		do
			set_c_data (item, (create {C_STRING}.make (a_value)).item )
		end

	block: detachable GSL_BLOCK_CHAR_STRUCT_STRUCT_API 
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

	set_block (a_value: GSL_BLOCK_CHAR_STRUCT_STRUCT_API) 
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

feature {NONE} -- Implementation wrapper for struct gsl_vector_char

	sizeof_external: INTEGER 
		external
			"C inline use <eif_gsl.h>"
		alias
			"sizeof(gsl_vector_char)"
		end

	c_size (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_vector_char*)$an_item)->size
			]"
		end

	set_c_size (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_vector_char*)$an_item)->size =  (size_t)$a_value
			]"
		ensure
			size_set: a_value = c_size (an_item)
		end

	c_stride (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_vector_char*)$an_item)->stride
			]"
		end

	set_c_stride (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_vector_char*)$an_item)->stride =  (size_t)$a_value
			]"
		ensure
			stride_set: a_value = c_stride (an_item)
		end

	c_data (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_vector_char*)$an_item)->data
			]"
		end

	set_c_data (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_vector_char*)$an_item)->data =  (char*)$a_value
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
				((gsl_vector_char*)$an_item)->block
			]"
		end

	set_c_block (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_vector_char*)$an_item)->block =  (gsl_block_char*)$a_value
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
				((gsl_vector_char*)$an_item)->owner
			]"
		end

	set_c_owner (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((gsl_vector_char*)$an_item)->owner =  (int)$a_value
			]"
		ensure
			owner_set: a_value = c_owner (an_item)
		end

end
