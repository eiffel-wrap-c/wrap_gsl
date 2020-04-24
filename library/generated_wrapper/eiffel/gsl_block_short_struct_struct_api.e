note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GSL_BLOCK_SHORT_STRUCT_STRUCT_API

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

feature {NONE} -- Implementation wrapper for struct struct gsl_block_short_struct

	sizeof_external: INTEGER 
		external
			"C inline use <eif_gsl.h>"
		alias
			"sizeof(struct gsl_block_short_struct)"
		end

	c_size (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((struct gsl_block_short_struct*)$an_item)->size
			]"
		end

	set_c_size (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((struct gsl_block_short_struct*)$an_item)->size =  (size_t)$a_value
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
				((struct gsl_block_short_struct*)$an_item)->data
			]"
		end

	set_c_data (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				((struct gsl_block_short_struct*)$an_item)->data =  (short*)$a_value
			]"
		ensure
			data_set: a_value = c_data (an_item)
		end

end
