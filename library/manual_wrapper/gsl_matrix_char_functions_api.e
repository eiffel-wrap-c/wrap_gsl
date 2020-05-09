note
	description: "This file has been generated by EWG. Moved to manual wrapping."
	generator: "Eiffel Wrapper Generator"

class GSL_MATRIX_CHAR_FUNCTIONS_API


feature -- Access

	gsl_matrix_char_alloc (n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_alloc ((size_t const)$n1, (size_t const)$n2);
			]"
		end

	gsl_matrix_char_calloc (n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_calloc ((size_t const)$n1, (size_t const)$n2);
			]"
		end

	gsl_matrix_char_alloc_from_block (b: GSL_BLOCK_CHAR_STRUCT_STRUCT_API; offset: INTEGER; n1: INTEGER; n2: INTEGER; d2: INTEGER): detachable GSL_MATRIX_CHAR_STRUCT_API
		do
			if attached c_gsl_matrix_char_alloc_from_block (b.item, offset, n1, n2, d2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_alloc_from_matrix (m: GSL_MATRIX_CHAR_STRUCT_API; k1: INTEGER; k2: INTEGER; n1: INTEGER; n2: INTEGER): detachable GSL_MATRIX_CHAR_STRUCT_API
		do
			if attached c_gsl_matrix_char_alloc_from_matrix (m.item, k1, k2, n1, n2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_vector_char_alloc_row_from_matrix (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER): detachable GSL_VECTOR_CHAR_STRUCT_API
		do
			if attached c_gsl_vector_char_alloc_row_from_matrix (m.item, i) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_vector_char_alloc_col_from_matrix (m: GSL_MATRIX_CHAR_STRUCT_API; j: INTEGER): detachable GSL_VECTOR_CHAR_STRUCT_API
		do
			if attached c_gsl_vector_char_alloc_col_from_matrix (m.item, j) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_free (m: GSL_MATRIX_CHAR_STRUCT_API)
		do
			c_gsl_matrix_char_free (m.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_submatrix (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER; j: INTEGER; n1: INTEGER; n2: INTEGER): detachable GSL_MATRIX_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_submatrix (m.item, i, j, n1, n2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_row (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_row (m.item, i) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_column (m: GSL_MATRIX_CHAR_STRUCT_API; j: INTEGER): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_column (m.item, j) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_diagonal (m: GSL_MATRIX_CHAR_STRUCT_API): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_diagonal (m.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_subdiagonal (m: GSL_MATRIX_CHAR_STRUCT_API; k: INTEGER): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_subdiagonal (m.item, k) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_superdiagonal (m: GSL_MATRIX_CHAR_STRUCT_API; k: INTEGER): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_superdiagonal (m.item, k) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_subrow (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER; offset: INTEGER; n: INTEGER): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_subrow (m.item, i, offset, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_subcolumn (m: GSL_MATRIX_CHAR_STRUCT_API; j: INTEGER; offset: INTEGER; n: INTEGER): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_subcolumn (m.item, j, offset, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_view_array (base: POINTER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_char_view *result = (_gsl_matrix_char_view*) malloc (sizeof(_gsl_matrix_char_view));
				*result = gsl_matrix_char_view_array ((char*)$base, (size_t const)$n1, (size_t const)$n2);
				return result;
			]"
		end

	gsl_matrix_char_view_array_with_tda (base: POINTER; n1: INTEGER; n2: INTEGER; tda: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_char_view *result = (_gsl_matrix_char_view*) malloc (sizeof(_gsl_matrix_char_view));
				*result = gsl_matrix_char_view_array_with_tda ((char*)$base, (size_t const)$n1, (size_t const)$n2, (size_t const)$tda);
				return result;
			]"
		end

	gsl_matrix_char_view_vector (v: GSL_VECTOR_CHAR_STRUCT_API; n1: INTEGER; n2: INTEGER): detachable GSL_MATRIX_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_view_vector (v.item, n1, n2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_view_vector_with_tda (v: GSL_VECTOR_CHAR_STRUCT_API; n1: INTEGER; n2: INTEGER; tda: INTEGER): detachable GSL_MATRIX_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_view_vector_with_tda (v.item, n1, n2, tda) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_const_submatrix (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER; j: INTEGER; n1: INTEGER; n2: INTEGER): detachable GSL_MATRIX_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_const_submatrix (m.item, i, j, n1, n2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_const_row (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_const_row (m.item, i) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_const_column (m: GSL_MATRIX_CHAR_STRUCT_API; j: INTEGER): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_const_column (m.item, j) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_const_diagonal (m: GSL_MATRIX_CHAR_STRUCT_API): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_const_diagonal (m.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_const_subdiagonal (m: GSL_MATRIX_CHAR_STRUCT_API; k: INTEGER): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_const_subdiagonal (m.item, k) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_const_superdiagonal (m: GSL_MATRIX_CHAR_STRUCT_API; k: INTEGER): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_const_superdiagonal (m.item, k) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_const_subrow (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER; offset: INTEGER; n: INTEGER): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_const_subrow (m.item, i, offset, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_const_subcolumn (m: GSL_MATRIX_CHAR_STRUCT_API; j: INTEGER; offset: INTEGER; n: INTEGER): detachable GSL_VECTOR_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_const_subcolumn (m.item, j, offset, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_const_view_array (base: POINTER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_char_const_view *result = (_gsl_matrix_char_const_view*) malloc (sizeof(_gsl_matrix_char_const_view));
				*result = gsl_matrix_char_const_view_array ((char const*)$base, (size_t const)$n1, (size_t const)$n2);
				return result;
			]"
		end

	gsl_matrix_char_const_view_array_with_tda (base: POINTER; n1: INTEGER; n2: INTEGER; tda: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_char_const_view *result = (_gsl_matrix_char_const_view*) malloc (sizeof(_gsl_matrix_char_const_view));
				*result = gsl_matrix_char_const_view_array_with_tda ((char const*)$base, (size_t const)$n1, (size_t const)$n2, (size_t const)$tda);
				return result;
			]"
		end

	gsl_matrix_char_const_view_vector (v: GSL_VECTOR_CHAR_STRUCT_API; n1: INTEGER; n2: INTEGER): detachable GSL_MATRIX_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_const_view_vector (v.item, n1, n2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_const_view_vector_with_tda (v: GSL_VECTOR_CHAR_STRUCT_API; n1: INTEGER; n2: INTEGER; tda: INTEGER): detachable GSL_MATRIX_CHAR_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_char_const_view_vector_with_tda (v.item, n1, n2, tda) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		ensure
			instance_free: class
		end

	gsl_matrix_char_set_zero (m: GSL_MATRIX_CHAR_STRUCT_API)
		do
			c_gsl_matrix_char_set_zero (m.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_set_identity (m: GSL_MATRIX_CHAR_STRUCT_API)
		do
			c_gsl_matrix_char_set_identity (m.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_set_all (m: GSL_MATRIX_CHAR_STRUCT_API; x: CHARACTER)
		do
			c_gsl_matrix_char_set_all (m.item, x)
		ensure
			instance_free: class
		end

	gsl_matrix_char_fread (stream: FILE; m: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_fread (stream.file_pointer, m.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_fwrite (stream: FILE; m: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_fwrite (stream.file_pointer, m.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_fscanf (stream: FILE; m: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_fscanf (stream.file_pointer, m.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_fprintf (stream: FILE; m: GSL_MATRIX_CHAR_STRUCT_API; format: STRING): INTEGER
		local
			format_c_string: C_STRING
		do
			create format_c_string.make (format)
			Result := c_gsl_matrix_char_fprintf (stream.file_pointer, m.item, format_c_string.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_memcpy (dest: GSL_MATRIX_CHAR_STRUCT_API; src: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_memcpy (dest.item, src.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_swap (m1: GSL_MATRIX_CHAR_STRUCT_API; m2: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_swap (m1.item, m2.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_tricpy (uplo: INTEGER; diag: INTEGER; dest: GSL_MATRIX_CHAR_STRUCT_API; src: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_tricpy (uplo, diag, dest.item, src.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_swap_rows (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER; j: INTEGER): INTEGER
		do
			Result := c_gsl_matrix_char_swap_rows (m.item, i, j)
		ensure
			instance_free: class
		end

	gsl_matrix_char_swap_columns (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER; j: INTEGER): INTEGER
		do
			Result := c_gsl_matrix_char_swap_columns (m.item, i, j)
		ensure
			instance_free: class
		end

	gsl_matrix_char_swap_rowcol (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER; j: INTEGER): INTEGER
		do
			Result := c_gsl_matrix_char_swap_rowcol (m.item, i, j)
		ensure
			instance_free: class
		end

	gsl_matrix_char_transpose (m: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_transpose (m.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_transpose_memcpy (dest: GSL_MATRIX_CHAR_STRUCT_API; src: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_transpose_memcpy (dest.item, src.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_transpose_tricpy (uplo_src: INTEGER; diag: INTEGER; dest: GSL_MATRIX_CHAR_STRUCT_API; src: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_transpose_tricpy (uplo_src, diag, dest.item, src.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_max (m: GSL_MATRIX_CHAR_STRUCT_API): CHARACTER
		do
			Result := c_gsl_matrix_char_max (m.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_min (m: GSL_MATRIX_CHAR_STRUCT_API): CHARACTER
		do
			Result := c_gsl_matrix_char_min (m.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_minmax (m: GSL_MATRIX_CHAR_STRUCT_API; min_out: STRING; max_out: STRING)
		local
			min_out_c_string: C_STRING
			max_out_c_string: C_STRING
		do
			create min_out_c_string.make (min_out)
			create max_out_c_string.make (max_out)
			c_gsl_matrix_char_minmax (m.item, min_out_c_string.item, max_out_c_string.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_max_index (m: GSL_MATRIX_CHAR_STRUCT_API; imax: POINTER; jmax: POINTER)
		do
			c_gsl_matrix_char_max_index (m.item, imax, jmax)
		ensure
			instance_free: class
		end

	gsl_matrix_char_min_index (m: GSL_MATRIX_CHAR_STRUCT_API; imin: POINTER; jmin: POINTER)
		do
			c_gsl_matrix_char_min_index (m.item, imin, jmin)
		ensure
			instance_free: class
		end

	gsl_matrix_char_minmax_index (m: GSL_MATRIX_CHAR_STRUCT_API; imin: POINTER; jmin: POINTER; imax: POINTER; jmax: POINTER)
		do
			c_gsl_matrix_char_minmax_index (m.item, imin, jmin, imax, jmax)
		ensure
			instance_free: class
		end

	gsl_matrix_char_equal (a: GSL_MATRIX_CHAR_STRUCT_API; b: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_equal (a.item, b.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_isnull (m: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_isnull (m.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_ispos (m: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_ispos (m.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_isneg (m: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_isneg (m.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_isnonneg (m: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_isnonneg (m.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_add (a: GSL_MATRIX_CHAR_STRUCT_API; b: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_add (a.item, b.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_sub (a: GSL_MATRIX_CHAR_STRUCT_API; b: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_sub (a.item, b.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_mul_elements (a: GSL_MATRIX_CHAR_STRUCT_API; b: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_mul_elements (a.item, b.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_div_elements (a: GSL_MATRIX_CHAR_STRUCT_API; b: GSL_MATRIX_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_div_elements (a.item, b.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_scale (a: GSL_MATRIX_CHAR_STRUCT_API; x: REAL_64): INTEGER
		do
			Result := c_gsl_matrix_char_scale (a.item, x)
		ensure
			instance_free: class
		end

	gsl_matrix_char_add_constant (a: GSL_MATRIX_CHAR_STRUCT_API; x: REAL_64): INTEGER
		do
			Result := c_gsl_matrix_char_add_constant (a.item, x)
		ensure
			instance_free: class
		end

	gsl_matrix_char_add_diagonal (a: GSL_MATRIX_CHAR_STRUCT_API; x: REAL_64): INTEGER
		do
			Result := c_gsl_matrix_char_add_diagonal (a.item, x)
		ensure
			instance_free: class
		end

	gsl_matrix_char_get_row (v: GSL_VECTOR_CHAR_STRUCT_API; m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER): INTEGER
		do
			Result := c_gsl_matrix_char_get_row (v.item, m.item, i)
		ensure
			instance_free: class
		end

	gsl_matrix_char_get_col (v: GSL_VECTOR_CHAR_STRUCT_API; m: GSL_MATRIX_CHAR_STRUCT_API; j: INTEGER): INTEGER
		do
			Result := c_gsl_matrix_char_get_col (v.item, m.item, j)
		ensure
			instance_free: class
		end

	gsl_matrix_char_set_row (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER; v: GSL_VECTOR_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_set_row (m.item, i, v.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_set_col (m: GSL_MATRIX_CHAR_STRUCT_API; j: INTEGER; v: GSL_VECTOR_CHAR_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_char_set_col (m.item, j, v.item)
		ensure
			instance_free: class
		end

	gsl_matrix_char_get (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER; j: INTEGER): CHARACTER
		do
			Result := c_gsl_matrix_char_get (m.item, i, j)
		ensure
			instance_free: class
		end

	gsl_matrix_char_set (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER; j: INTEGER; x: CHARACTER)
		do
			c_gsl_matrix_char_set (m.item, i, j, x)
		ensure
			instance_free: class
		end

	gsl_matrix_char_ptr (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER; j: INTEGER): POINTER
		do
			Result := c_gsl_matrix_char_ptr (m.item, i, j)
		ensure
			instance_free: class
		end

	gsl_matrix_char_const_ptr (m: GSL_MATRIX_CHAR_STRUCT_API; i: INTEGER; j: INTEGER): POINTER
		do
			Result := c_gsl_matrix_char_const_ptr (m.item, i, j)
		ensure
			instance_free: class
		end

feature -- Externals

	c_gsl_matrix_char_alloc_from_block (b: POINTER; offset: INTEGER; n1: INTEGER; n2: INTEGER; d2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_alloc_from_block ((gsl_block_char*)$b, (size_t const)$offset, (size_t const)$n1, (size_t const)$n2, (size_t const)$d2);
			]"
		end

	c_gsl_matrix_char_alloc_from_matrix (m: POINTER; k1: INTEGER; k2: INTEGER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_alloc_from_matrix ((gsl_matrix_char*)$m, (size_t const)$k1, (size_t const)$k2, (size_t const)$n1, (size_t const)$n2);
			]"
		end

	c_gsl_vector_char_alloc_row_from_matrix (m: POINTER; i: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_char_alloc_row_from_matrix ((gsl_matrix_char*)$m, (size_t const)$i);
			]"
		end

	c_gsl_vector_char_alloc_col_from_matrix (m: POINTER; j: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_char_alloc_col_from_matrix ((gsl_matrix_char*)$m, (size_t const)$j);
			]"
		end

	c_gsl_matrix_char_free (m: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_char_free ((gsl_matrix_char*)$m);
			]"
		end

	c_gsl_matrix_char_submatrix (m: POINTER; i: INTEGER; j: INTEGER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_char_view *result = (_gsl_matrix_char_view*) malloc (sizeof(_gsl_matrix_char_view));
				*result = gsl_matrix_char_submatrix ((gsl_matrix_char*)$m, (size_t const)$i, (size_t const)$j, (size_t const)$n1, (size_t const)$n2);
				return result;
			]"
		end

	c_gsl_matrix_char_row (m: POINTER; i: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_view *result = (_gsl_vector_char_view*) malloc (sizeof(_gsl_vector_char_view));
				*result = gsl_matrix_char_row ((gsl_matrix_char*)$m, (size_t const)$i);
				return result;
			]"
		end

	c_gsl_matrix_char_column (m: POINTER; j: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_view *result = (_gsl_vector_char_view*) malloc (sizeof(_gsl_vector_char_view));
				*result = gsl_matrix_char_column ((gsl_matrix_char*)$m, (size_t const)$j);
				return result;
			]"
		end

	c_gsl_matrix_char_diagonal (m: POINTER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_view *result = (_gsl_vector_char_view*) malloc (sizeof(_gsl_vector_char_view));
				*result = gsl_matrix_char_diagonal ((gsl_matrix_char*)$m);
				return result;
			]"
		end

	c_gsl_matrix_char_subdiagonal (m: POINTER; k: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_view *result = (_gsl_vector_char_view*) malloc (sizeof(_gsl_vector_char_view));
				*result = gsl_matrix_char_subdiagonal ((gsl_matrix_char*)$m, (size_t const)$k);
				return result;
			]"
		end

	c_gsl_matrix_char_superdiagonal (m: POINTER; k: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_view *result = (_gsl_vector_char_view*) malloc (sizeof(_gsl_vector_char_view));
				*result = gsl_matrix_char_superdiagonal ((gsl_matrix_char*)$m, (size_t const)$k);
				return result;
			]"
		end

	c_gsl_matrix_char_subrow (m: POINTER; i: INTEGER; offset: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_view *result = (_gsl_vector_char_view*) malloc (sizeof(_gsl_vector_char_view));
				*result = gsl_matrix_char_subrow ((gsl_matrix_char*)$m, (size_t const)$i, (size_t const)$offset, (size_t const)$n);
				return result;
			]"
		end

	c_gsl_matrix_char_subcolumn (m: POINTER; j: INTEGER; offset: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_view *result = (_gsl_vector_char_view*) malloc (sizeof(_gsl_vector_char_view));
				*result = gsl_matrix_char_subcolumn ((gsl_matrix_char*)$m, (size_t const)$j, (size_t const)$offset, (size_t const)$n);
				return result;
			]"
		end

	c_gsl_matrix_char_view_vector (v: POINTER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_char_view *result = (_gsl_matrix_char_view*) malloc (sizeof(_gsl_matrix_char_view));
				*result = gsl_matrix_char_view_vector ((gsl_vector_char*)$v, (size_t const)$n1, (size_t const)$n2);
				return result;
			]"
		end

	c_gsl_matrix_char_view_vector_with_tda (v: POINTER; n1: INTEGER; n2: INTEGER; tda: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_char_view *result = (_gsl_matrix_char_view*) malloc (sizeof(_gsl_matrix_char_view));
				*result = gsl_matrix_char_view_vector_with_tda ((gsl_vector_char*)$v, (size_t const)$n1, (size_t const)$n2, (size_t const)$tda);
				return result;
			]"
		end

	c_gsl_matrix_char_const_submatrix (m: POINTER; i: INTEGER; j: INTEGER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_char_const_view *result = (_gsl_matrix_char_const_view*) malloc (sizeof(_gsl_matrix_char_const_view));
				*result = gsl_matrix_char_const_submatrix ((gsl_matrix_char const*)$m, (size_t const)$i, (size_t const)$j, (size_t const)$n1, (size_t const)$n2);
				return result;
			]"
		end

	c_gsl_matrix_char_const_row (m: POINTER; i: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_const_view *result = (_gsl_vector_char_const_view*) malloc (sizeof(_gsl_vector_char_const_view));
				*result = gsl_matrix_char_const_row ((gsl_matrix_char const*)$m, (size_t const)$i);
				return result;
			]"
		end

	c_gsl_matrix_char_const_column (m: POINTER; j: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_const_view *result = (_gsl_vector_char_const_view*) malloc (sizeof(_gsl_vector_char_const_view));
				*result = gsl_matrix_char_const_column ((gsl_matrix_char const*)$m, (size_t const)$j);
				return result;
			]"
		end

	c_gsl_matrix_char_const_diagonal (m: POINTER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_const_view *result = (_gsl_vector_char_const_view*) malloc (sizeof(_gsl_vector_char_const_view));
				*result = gsl_matrix_char_const_diagonal ((gsl_matrix_char const*)$m);
				return result;
			]"
		end

	c_gsl_matrix_char_const_subdiagonal (m: POINTER; k: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_const_view *result = (_gsl_vector_char_const_view*) malloc (sizeof(_gsl_vector_char_const_view));
				*result = gsl_matrix_char_const_subdiagonal ((gsl_matrix_char const*)$m, (size_t const)$k);
				return result;
			]"
		end

	c_gsl_matrix_char_const_superdiagonal (m: POINTER; k: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_const_view *result = (_gsl_vector_char_const_view*) malloc (sizeof(_gsl_vector_char_const_view));
				*result = gsl_matrix_char_const_superdiagonal ((gsl_matrix_char const*)$m, (size_t const)$k);
				return result;
			]"
		end

	c_gsl_matrix_char_const_subrow (m: POINTER; i: INTEGER; offset: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_const_view *result = (_gsl_vector_char_const_view*) malloc (sizeof(_gsl_vector_char_const_view));
				*result = gsl_matrix_char_const_subrow ((gsl_matrix_char const*)$m, (size_t const)$i, (size_t const)$offset, (size_t const)$n);
				return result;
			]"
		end

	c_gsl_matrix_char_const_subcolumn (m: POINTER; j: INTEGER; offset: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_char_const_view *result = (_gsl_vector_char_const_view*) malloc (sizeof(_gsl_vector_char_const_view));
				*result = gsl_matrix_char_const_subcolumn ((gsl_matrix_char const*)$m, (size_t const)$j, (size_t const)$offset, (size_t const)$n);
				return result;
			]"
		end

	c_gsl_matrix_char_const_view_vector (v: POINTER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_char_const_view *result = (_gsl_matrix_char_const_view*) malloc (sizeof(_gsl_matrix_char_const_view));
				*result = gsl_matrix_char_const_view_vector ((gsl_vector_char const*)$v, (size_t const)$n1, (size_t const)$n2);
				return result;
			]"
		end

	c_gsl_matrix_char_const_view_vector_with_tda (v: POINTER; n1: INTEGER; n2: INTEGER; tda: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_char_const_view *result = (_gsl_matrix_char_const_view*) malloc (sizeof(_gsl_matrix_char_const_view));
				*result = gsl_matrix_char_const_view_vector_with_tda ((gsl_vector_char const*)$v, (size_t const)$n1, (size_t const)$n2, (size_t const)$tda);
				return result;
			]"
		end

	c_gsl_matrix_char_set_zero (m: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_char_set_zero ((gsl_matrix_char*)$m);
			]"
		end

	c_gsl_matrix_char_set_identity (m: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_char_set_identity ((gsl_matrix_char*)$m);
			]"
		end

	c_gsl_matrix_char_set_all (m: POINTER; x: CHARACTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_char_set_all ((gsl_matrix_char*)$m, (char)$x);
			]"
		end

	c_gsl_matrix_char_fread (stream: POINTER; m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_fread ((FILE*)$stream, (gsl_matrix_char*)$m);
			]"
		end

	c_gsl_matrix_char_fwrite (stream: POINTER; m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_fwrite ((FILE*)$stream, (gsl_matrix_char const*)$m);
			]"
		end

	c_gsl_matrix_char_fscanf (stream: POINTER; m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_fscanf ((FILE*)$stream, (gsl_matrix_char*)$m);
			]"
		end

	c_gsl_matrix_char_fprintf (stream: POINTER; m: POINTER; format: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_fprintf ((FILE*)$stream, (gsl_matrix_char const*)$m, (char const*)$format);
			]"
		end

	c_gsl_matrix_char_memcpy (dest: POINTER; src: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_memcpy ((gsl_matrix_char*)$dest, (gsl_matrix_char const*)$src);
			]"
		end

	c_gsl_matrix_char_swap (m1: POINTER; m2: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_swap ((gsl_matrix_char*)$m1, (gsl_matrix_char*)$m2);
			]"
		end

	c_gsl_matrix_char_tricpy (uplo: INTEGER; diag: INTEGER; dest: POINTER; src: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_tricpy ((CBLAS_UPLO_t)$uplo, (CBLAS_DIAG_t)$diag, (gsl_matrix_char*)$dest, (gsl_matrix_char const*)$src);
			]"
		end

	c_gsl_matrix_char_swap_rows (m: POINTER; i: INTEGER; j: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_swap_rows ((gsl_matrix_char*)$m, (size_t const)$i, (size_t const)$j);
			]"
		end

	c_gsl_matrix_char_swap_columns (m: POINTER; i: INTEGER; j: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_swap_columns ((gsl_matrix_char*)$m, (size_t const)$i, (size_t const)$j);
			]"
		end

	c_gsl_matrix_char_swap_rowcol (m: POINTER; i: INTEGER; j: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_swap_rowcol ((gsl_matrix_char*)$m, (size_t const)$i, (size_t const)$j);
			]"
		end

	c_gsl_matrix_char_transpose (m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_transpose ((gsl_matrix_char*)$m);
			]"
		end

	c_gsl_matrix_char_transpose_memcpy (dest: POINTER; src: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_transpose_memcpy ((gsl_matrix_char*)$dest, (gsl_matrix_char const*)$src);
			]"
		end

	c_gsl_matrix_char_transpose_tricpy (uplo_src: INTEGER; diag: INTEGER; dest: POINTER; src: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_transpose_tricpy ((CBLAS_UPLO_t)$uplo_src, (CBLAS_DIAG_t)$diag, (gsl_matrix_char*)$dest, (gsl_matrix_char const*)$src);
			]"
		end

	c_gsl_matrix_char_max (m: POINTER): CHARACTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_max ((gsl_matrix_char const*)$m);
			]"
		end

	c_gsl_matrix_char_min (m: POINTER): CHARACTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_min ((gsl_matrix_char const*)$m);
			]"
		end

	c_gsl_matrix_char_minmax (m: POINTER; min_out: POINTER; max_out: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_char_minmax ((gsl_matrix_char const*)$m, (char*)$min_out, (char*)$max_out);
			]"
		end

	c_gsl_matrix_char_max_index (m: POINTER; imax: POINTER; jmax: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_char_max_index ((gsl_matrix_char const*)$m, (size_t*)$imax, (size_t*)$jmax);
			]"
		end

	c_gsl_matrix_char_min_index (m: POINTER; imin: POINTER; jmin: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_char_min_index ((gsl_matrix_char const*)$m, (size_t*)$imin, (size_t*)$jmin);
			]"
		end

	c_gsl_matrix_char_minmax_index (m: POINTER; imin: POINTER; jmin: POINTER; imax: POINTER; jmax: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_char_minmax_index ((gsl_matrix_char const*)$m, (size_t*)$imin, (size_t*)$jmin, (size_t*)$imax, (size_t*)$jmax);
			]"
		end

	c_gsl_matrix_char_equal (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_equal ((gsl_matrix_char const*)$a, (gsl_matrix_char const*)$b);
			]"
		end

	c_gsl_matrix_char_isnull (m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_isnull ((gsl_matrix_char const*)$m);
			]"
		end

	c_gsl_matrix_char_ispos (m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_ispos ((gsl_matrix_char const*)$m);
			]"
		end

	c_gsl_matrix_char_isneg (m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_isneg ((gsl_matrix_char const*)$m);
			]"
		end

	c_gsl_matrix_char_isnonneg (m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_isnonneg ((gsl_matrix_char const*)$m);
			]"
		end

	c_gsl_matrix_char_add (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_add ((gsl_matrix_char*)$a, (gsl_matrix_char const*)$b);
			]"
		end

	c_gsl_matrix_char_sub (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_sub ((gsl_matrix_char*)$a, (gsl_matrix_char const*)$b);
			]"
		end

	c_gsl_matrix_char_mul_elements (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_mul_elements ((gsl_matrix_char*)$a, (gsl_matrix_char const*)$b);
			]"
		end

	c_gsl_matrix_char_div_elements (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_div_elements ((gsl_matrix_char*)$a, (gsl_matrix_char const*)$b);
			]"
		end

	c_gsl_matrix_char_scale (a: POINTER; x: REAL_64): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_scale ((gsl_matrix_char*)$a, (double const)$x);
			]"
		end

	c_gsl_matrix_char_add_constant (a: POINTER; x: REAL_64): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_add_constant ((gsl_matrix_char*)$a, (double const)$x);
			]"
		end

	c_gsl_matrix_char_add_diagonal (a: POINTER; x: REAL_64): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_add_diagonal ((gsl_matrix_char*)$a, (double const)$x);
			]"
		end

	c_gsl_matrix_char_get_row (v: POINTER; m: POINTER; i: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_get_row ((gsl_vector_char*)$v, (gsl_matrix_char const*)$m, (size_t const)$i);
			]"
		end

	c_gsl_matrix_char_get_col (v: POINTER; m: POINTER; j: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_get_col ((gsl_vector_char*)$v, (gsl_matrix_char const*)$m, (size_t const)$j);
			]"
		end

	c_gsl_matrix_char_set_row (m: POINTER; i: INTEGER; v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_set_row ((gsl_matrix_char*)$m, (size_t const)$i, (gsl_vector_char const*)$v);
			]"
		end

	c_gsl_matrix_char_set_col (m: POINTER; j: INTEGER; v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_set_col ((gsl_matrix_char*)$m, (size_t const)$j, (gsl_vector_char const*)$v);
			]"
		end

	c_gsl_matrix_char_get (m: POINTER; i: INTEGER; j: INTEGER): CHARACTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_get ((gsl_matrix_char const*)$m, (size_t const)$i, (size_t const)$j);
			]"
		end

	c_gsl_matrix_char_set (m: POINTER; i: INTEGER; j: INTEGER; x: CHARACTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_char_set ((gsl_matrix_char*)$m, (size_t const)$i, (size_t const)$j, (char const)$x);
			]"
		end

	c_gsl_matrix_char_ptr (m: POINTER; i: INTEGER; j: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_ptr ((gsl_matrix_char*)$m, (size_t const)$i, (size_t const)$j);
			]"
		end

	c_gsl_matrix_char_const_ptr (m: POINTER; i: INTEGER; j: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_char_const_ptr ((gsl_matrix_char const*)$m, (size_t const)$i, (size_t const)$j);
			]"
		end

feature -- Externals Address

end
