note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GSL_BLOCK_UCHAR_STRUCT_STRUCT_API

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

	data:  detachable C_STRING
			-- Access member `data`
		require
			exists: exists
		do
			if attached c_data (item) as l_ptr then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_data (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.string.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_data (a_value: C_STRING) 
			-- Change the value of member `data` to `a_value`.
		require
			exists: exists
		do
			set_c_data (item, a_value.item )
		end

feature {NONE} -- Implementation wrapper for struct struct gsl_block_uchar_struct

	sizeof_external: INTEGER 
		external
			"C inline use <eif_gsl.h>"
		alias
			"sizeof(struct gsl_block_uchar_struct)"
		end

	c_size (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((struct gsl_block_uchar_struct*)$an_item)->size
			]"
		end

	set_c_size (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((struct gsl_block_uchar_struct*)$an_item)->size =  (size_t)$a_value
			]"
		ensure
			size_set: a_value = c_size (an_item)
		end

	c_data (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((struct gsl_block_uchar_struct*)$an_item)->data
			]"
		end

	set_c_data (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((struct gsl_block_uchar_struct*)$an_item)->data =  (unsigned char*)$a_value
			]"
		ensure
			data_set: a_value = c_data (an_item)
		end

end
