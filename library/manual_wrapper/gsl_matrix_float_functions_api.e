note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GSL_MATRIX_FLOAT_FUNCTIONS_API


feature -- Access

	gsl_matrix_float_alloc (n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_alloc ((size_t const)$n1, (size_t const)$n2);
			]"
		end

	gsl_matrix_float_calloc (n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_calloc ((size_t const)$n1, (size_t const)$n2);
			]"
		end

	gsl_matrix_float_alloc_from_block (b: GSL_BLOCK_FLOAT_STRUCT_STRUCT_API; offset: INTEGER; n1: INTEGER; n2: INTEGER; d2: INTEGER): detachable GSL_MATRIX_FLOAT_STRUCT_API
		do
			if attached c_gsl_matrix_float_alloc_from_block (b.item, offset, n1, n2, d2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_alloc_from_matrix (m: GSL_MATRIX_FLOAT_STRUCT_API; k1: INTEGER; k2: INTEGER; n1: INTEGER; n2: INTEGER): detachable GSL_MATRIX_FLOAT_STRUCT_API
		do
			if attached c_gsl_matrix_float_alloc_from_matrix (m.item, k1, k2, n1, n2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_float_alloc_row_from_matrix (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER): detachable GSL_VECTOR_FLOAT_STRUCT_API
		do
			if attached c_gsl_vector_float_alloc_row_from_matrix (m.item, i) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_float_alloc_col_from_matrix (m: GSL_MATRIX_FLOAT_STRUCT_API; j: INTEGER): detachable GSL_VECTOR_FLOAT_STRUCT_API
		do
			if attached c_gsl_vector_float_alloc_col_from_matrix (m.item, j) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_free (m: GSL_MATRIX_FLOAT_STRUCT_API)
		do
			c_gsl_matrix_float_free (m.item)
		end

	gsl_matrix_float_submatrix (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER; j: INTEGER; n1: INTEGER; n2: INTEGER): detachable GSL_MATRIX_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_submatrix (m.item, i, j, n1, n2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_row (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_row (m.item, i) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_column (m: GSL_MATRIX_FLOAT_STRUCT_API; j: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_column (m.item, j) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_diagonal (m: GSL_MATRIX_FLOAT_STRUCT_API): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_diagonal (m.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_subdiagonal (m: GSL_MATRIX_FLOAT_STRUCT_API; k: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_subdiagonal (m.item, k) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_superdiagonal (m: GSL_MATRIX_FLOAT_STRUCT_API; k: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_superdiagonal (m.item, k) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_subrow (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER; offset: INTEGER; n: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_subrow (m.item, i, offset, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_subcolumn (m: GSL_MATRIX_FLOAT_STRUCT_API; j: INTEGER; offset: INTEGER; n: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_subcolumn (m.item, j, offset, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_view_array (base: POINTER; n1: INTEGER; n2: INTEGER): detachable GSL_MATRIX_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_view_array (base, n1, n2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_view_array_with_tda (base: POINTER; n1: INTEGER; n2: INTEGER; tda: INTEGER): detachable GSL_MATRIX_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_view_array_with_tda (base, n1, n2, tda) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_view_vector (v: GSL_VECTOR_FLOAT_STRUCT_API; n1: INTEGER; n2: INTEGER): detachable GSL_MATRIX_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_view_vector (v.item, n1, n2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_view_vector_with_tda (v: GSL_VECTOR_FLOAT_STRUCT_API; n1: INTEGER; n2: INTEGER; tda: INTEGER): detachable GSL_MATRIX_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_view_vector_with_tda (v.item, n1, n2, tda) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_const_submatrix (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER; j: INTEGER; n1: INTEGER; n2: INTEGER): detachable GSL_MATRIX_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_const_submatrix (m.item, i, j, n1, n2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_const_row (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_const_row (m.item, i) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_const_column (m: GSL_MATRIX_FLOAT_STRUCT_API; j: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_const_column (m.item, j) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_const_diagonal (m: GSL_MATRIX_FLOAT_STRUCT_API): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_const_diagonal (m.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_const_subdiagonal (m: GSL_MATRIX_FLOAT_STRUCT_API; k: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_const_subdiagonal (m.item, k) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_const_superdiagonal (m: GSL_MATRIX_FLOAT_STRUCT_API; k: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_const_superdiagonal (m.item, k) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_const_subrow (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER; offset: INTEGER; n: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_const_subrow (m.item, i, offset, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_const_subcolumn (m: GSL_MATRIX_FLOAT_STRUCT_API; j: INTEGER; offset: INTEGER; n: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_const_subcolumn (m.item, j, offset, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_const_view_array (base: POINTER; n1: INTEGER; n2: INTEGER): detachable GSL_MATRIX_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_const_view_array (base, n1, n2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_const_view_array_with_tda (base: POINTER; n1: INTEGER; n2: INTEGER; tda: INTEGER): detachable GSL_MATRIX_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_const_view_array_with_tda (base, n1, n2, tda) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_const_view_vector (v: GSL_VECTOR_FLOAT_STRUCT_API; n1: INTEGER; n2: INTEGER): detachable GSL_MATRIX_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_const_view_vector (v.item, n1, n2) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_const_view_vector_with_tda (v: GSL_VECTOR_FLOAT_STRUCT_API; n1: INTEGER; n2: INTEGER; tda: INTEGER): detachable GSL_MATRIX_FLOAT_VIEW_STRUCT_API
		do
			if attached c_gsl_matrix_float_const_view_vector_with_tda (v.item, n1, n2, tda) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_matrix_float_set_zero (m: GSL_MATRIX_FLOAT_STRUCT_API)
		do
			c_gsl_matrix_float_set_zero (m.item)
		end

	gsl_matrix_float_set_identity (m: GSL_MATRIX_FLOAT_STRUCT_API)
		do
			c_gsl_matrix_float_set_identity (m.item)
		end

	gsl_matrix_float_set_all (m: GSL_MATRIX_FLOAT_STRUCT_API; x: REAL)
		do
			c_gsl_matrix_float_set_all (m.item, x)
		end

	gsl_matrix_float_fread (stream: FILE; m: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_fread (stream.file_pointer, m.item)
		end

	gsl_matrix_float_fwrite (stream: FILE; m: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_fwrite (stream.file_pointer, m.item)
		end

	gsl_matrix_float_fscanf (stream: FILE; m: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_fscanf (stream.file_pointer, m.item)
		end

	gsl_matrix_float_fprintf (stream: FILE; m: GSL_MATRIX_FLOAT_STRUCT_API; format: STRING): INTEGER
		local
			format_c_string: C_STRING
		do
			create format_c_string.make (format)
			Result := c_gsl_matrix_float_fprintf (stream.file_pointer, m.item, format_c_string.item)
		end

	gsl_matrix_float_memcpy (dest: GSL_MATRIX_FLOAT_STRUCT_API; src: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_memcpy (dest.item, src.item)
		end

	gsl_matrix_float_swap (m1: GSL_MATRIX_FLOAT_STRUCT_API; m2: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_swap (m1.item, m2.item)
		end

	gsl_matrix_float_tricpy (uplo: INTEGER; diag: INTEGER; dest: GSL_MATRIX_FLOAT_STRUCT_API; src: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_tricpy (uplo, diag, dest.item, src.item)
		end

	gsl_matrix_float_swap_rows (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER; j: INTEGER): INTEGER
		do
			Result := c_gsl_matrix_float_swap_rows (m.item, i, j)
		end

	gsl_matrix_float_swap_columns (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER; j: INTEGER): INTEGER
		do
			Result := c_gsl_matrix_float_swap_columns (m.item, i, j)
		end

	gsl_matrix_float_swap_rowcol (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER; j: INTEGER): INTEGER
		do
			Result := c_gsl_matrix_float_swap_rowcol (m.item, i, j)
		end

	gsl_matrix_float_transpose (m: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_transpose (m.item)
		end

	gsl_matrix_float_transpose_memcpy (dest: GSL_MATRIX_FLOAT_STRUCT_API; src: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_transpose_memcpy (dest.item, src.item)
		end

	gsl_matrix_float_transpose_tricpy (uplo_src: INTEGER; diag: INTEGER; dest: GSL_MATRIX_FLOAT_STRUCT_API; src: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_transpose_tricpy (uplo_src, diag, dest.item, src.item)
		end

	gsl_matrix_float_max (m: GSL_MATRIX_FLOAT_STRUCT_API): REAL
		do
			Result := c_gsl_matrix_float_max (m.item)
		end

	gsl_matrix_float_min (m: GSL_MATRIX_FLOAT_STRUCT_API): REAL
		do
			Result := c_gsl_matrix_float_min (m.item)
		end

	gsl_matrix_float_minmax (m: GSL_MATRIX_FLOAT_STRUCT_API; min_out: POINTER; max_out: POINTER)
		do
			c_gsl_matrix_float_minmax (m.item, min_out, max_out)
		end

	gsl_matrix_float_max_index (m: GSL_MATRIX_FLOAT_STRUCT_API; imax: POINTER; jmax: POINTER)
		do
			c_gsl_matrix_float_max_index (m.item, imax, jmax)
		end

	gsl_matrix_float_min_index (m: GSL_MATRIX_FLOAT_STRUCT_API; imin: POINTER; jmin: POINTER)
		do
			c_gsl_matrix_float_min_index (m.item, imin, jmin)
		end

	gsl_matrix_float_minmax_index (m: GSL_MATRIX_FLOAT_STRUCT_API; imin: POINTER; jmin: POINTER; imax: POINTER; jmax: POINTER)
		do
			c_gsl_matrix_float_minmax_index (m.item, imin, jmin, imax, jmax)
		end

	gsl_matrix_float_equal (a: GSL_MATRIX_FLOAT_STRUCT_API; b: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_equal (a.item, b.item)
		end

	gsl_matrix_float_isnull (m: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_isnull (m.item)
		end

	gsl_matrix_float_ispos (m: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_ispos (m.item)
		end

	gsl_matrix_float_isneg (m: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_isneg (m.item)
		end

	gsl_matrix_float_isnonneg (m: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_isnonneg (m.item)
		end

	gsl_matrix_float_add (a: GSL_MATRIX_FLOAT_STRUCT_API; b: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_add (a.item, b.item)
		end

	gsl_matrix_float_sub (a: GSL_MATRIX_FLOAT_STRUCT_API; b: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_sub (a.item, b.item)
		end

	gsl_matrix_float_mul_elements (a: GSL_MATRIX_FLOAT_STRUCT_API; b: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_mul_elements (a.item, b.item)
		end

	gsl_matrix_float_div_elements (a: GSL_MATRIX_FLOAT_STRUCT_API; b: GSL_MATRIX_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_div_elements (a.item, b.item)
		end

	gsl_matrix_float_scale (a: GSL_MATRIX_FLOAT_STRUCT_API; x: REAL_64): INTEGER
		do
			Result := c_gsl_matrix_float_scale (a.item, x)
		end

	gsl_matrix_float_add_constant (a: GSL_MATRIX_FLOAT_STRUCT_API; x: REAL_64): INTEGER
		do
			Result := c_gsl_matrix_float_add_constant (a.item, x)
		end

	gsl_matrix_float_add_diagonal (a: GSL_MATRIX_FLOAT_STRUCT_API; x: REAL_64): INTEGER
		do
			Result := c_gsl_matrix_float_add_diagonal (a.item, x)
		end

	gsl_matrix_float_get_row (v: GSL_VECTOR_FLOAT_STRUCT_API; m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER): INTEGER
		do
			Result := c_gsl_matrix_float_get_row (v.item, m.item, i)
		end

	gsl_matrix_float_get_col (v: GSL_VECTOR_FLOAT_STRUCT_API; m: GSL_MATRIX_FLOAT_STRUCT_API; j: INTEGER): INTEGER
		do
			Result := c_gsl_matrix_float_get_col (v.item, m.item, j)
		end

	gsl_matrix_float_set_row (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER; v: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_set_row (m.item, i, v.item)
		end

	gsl_matrix_float_set_col (m: GSL_MATRIX_FLOAT_STRUCT_API; j: INTEGER; v: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER
		do
			Result := c_gsl_matrix_float_set_col (m.item, j, v.item)
		end

	gsl_matrix_float_get (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER; j: INTEGER): REAL
		do
			Result := c_gsl_matrix_float_get (m.item, i, j)
		end

	gsl_matrix_float_set (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER; j: INTEGER; x: REAL)
		do
			c_gsl_matrix_float_set (m.item, i, j, x)
		end

	gsl_matrix_float_ptr (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER; j: INTEGER): POINTER
		do
			Result := c_gsl_matrix_float_ptr (m.item, i, j)
		end

	gsl_matrix_float_const_ptr (m: GSL_MATRIX_FLOAT_STRUCT_API; i: INTEGER; j: INTEGER): POINTER
		do
			Result := c_gsl_matrix_float_const_ptr (m.item, i, j)
		end

feature -- Externals

	c_gsl_matrix_float_alloc_from_block (b: POINTER; offset: INTEGER; n1: INTEGER; n2: INTEGER; d2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_alloc_from_block ((gsl_block_float*)$b, (size_t const)$offset, (size_t const)$n1, (size_t const)$n2, (size_t const)$d2);
			]"
		end

	c_gsl_matrix_float_alloc_from_matrix (m: POINTER; k1: INTEGER; k2: INTEGER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_alloc_from_matrix ((gsl_matrix_float*)$m, (size_t const)$k1, (size_t const)$k2, (size_t const)$n1, (size_t const)$n2);
			]"
		end

	c_gsl_vector_float_alloc_row_from_matrix (m: POINTER; i: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_alloc_row_from_matrix ((gsl_matrix_float*)$m, (size_t const)$i);
			]"
		end

	c_gsl_vector_float_alloc_col_from_matrix (m: POINTER; j: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_alloc_col_from_matrix ((gsl_matrix_float*)$m, (size_t const)$j);
			]"
		end

	c_gsl_matrix_float_free (m: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_float_free ((gsl_matrix_float*)$m);
			]"
		end

	c_gsl_matrix_float_submatrix (m: POINTER; i: INTEGER; j: INTEGER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_float_view *result = (_gsl_matrix_float_view*) malloc (sizeof(_gsl_matrix_float_view));
				*result = gsl_matrix_float_submatrix ((gsl_matrix_float*)$m, (size_t const)$i, (size_t const)$j, (size_t const)$n1, (size_t const)$n2);
				return result;
			]"
		end

	c_gsl_matrix_float_row (m: POINTER; i: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_view *result = (_gsl_vector_float_view*) malloc (sizeof(_gsl_vector_float_view));
				*result = gsl_matrix_float_row ((gsl_matrix_float*)$m, (size_t const)$i);
				return result;
			]"
		end

	c_gsl_matrix_float_column (m: POINTER; j: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_view *result = (_gsl_vector_float_view*) malloc (sizeof(_gsl_vector_float_view));
				*result = gsl_matrix_float_column ((gsl_matrix_float*)$m, (size_t const)$j);
				return result;
			]"
		end

	c_gsl_matrix_float_diagonal (m: POINTER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_view *result = (_gsl_vector_float_view*) malloc (sizeof(_gsl_vector_float_view));
				*result = gsl_matrix_float_diagonal ((gsl_matrix_float*)$m);
				return result;
			]"
		end

	c_gsl_matrix_float_subdiagonal (m: POINTER; k: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_view *result = (_gsl_vector_float_view*) malloc (sizeof(_gsl_vector_float_view));
				*result = gsl_matrix_float_subdiagonal ((gsl_matrix_float*)$m, (size_t const)$k);
				return result;
			]"
		end

	c_gsl_matrix_float_superdiagonal (m: POINTER; k: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_view *result = (_gsl_vector_float_view*) malloc (sizeof(_gsl_vector_float_view));
				*result = gsl_matrix_float_superdiagonal ((gsl_matrix_float*)$m, (size_t const)$k);
				return result;
			]"
		end

	c_gsl_matrix_float_subrow (m: POINTER; i: INTEGER; offset: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_view *result = (_gsl_vector_float_view*) malloc (sizeof(_gsl_vector_float_view));
				*result = gsl_matrix_float_subrow ((gsl_matrix_float*)$m, (size_t const)$i, (size_t const)$offset, (size_t const)$n);
				return result;
			]"
		end

	c_gsl_matrix_float_subcolumn (m: POINTER; j: INTEGER; offset: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_view *result = (_gsl_vector_float_view*) malloc (sizeof(_gsl_vector_float_view));
				*result = gsl_matrix_float_subcolumn ((gsl_matrix_float*)$m, (size_t const)$j, (size_t const)$offset, (size_t const)$n);
				return result;
			]"
		end

	c_gsl_matrix_float_view_array (base: POINTER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_float_view *result = (_gsl_matrix_float_view*) malloc (sizeof(_gsl_matrix_float_view));
				*result = gsl_matrix_float_view_array ((float*)$base, (size_t const)$n1, (size_t const)$n2);
				return result;
			]"
		end

	c_gsl_matrix_float_view_array_with_tda (base: POINTER; n1: INTEGER; n2: INTEGER; tda: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_float_view *result = (_gsl_matrix_float_view*) malloc (sizeof(_gsl_matrix_float_view));
				*result = gsl_matrix_float_view_array_with_tda ((float*)$base, (size_t const)$n1, (size_t const)$n2, (size_t const)$tda);
				return result;
			]"
		end

	c_gsl_matrix_float_view_vector (v: POINTER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_float_view *result = (_gsl_matrix_float_view*) malloc (sizeof(_gsl_matrix_float_view));
				*result = gsl_matrix_float_view_vector ((gsl_vector_float*)$v, (size_t const)$n1, (size_t const)$n2);
				return result;
			]"
		end

	c_gsl_matrix_float_view_vector_with_tda (v: POINTER; n1: INTEGER; n2: INTEGER; tda: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_float_view *result = (_gsl_matrix_float_view*) malloc (sizeof(_gsl_matrix_float_view));
				*result = gsl_matrix_float_view_vector_with_tda ((gsl_vector_float*)$v, (size_t const)$n1, (size_t const)$n2, (size_t const)$tda);
				return result;
			]"
		end

	c_gsl_matrix_float_const_submatrix (m: POINTER; i: INTEGER; j: INTEGER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_float_const_view *result = (_gsl_matrix_float_const_view*) malloc (sizeof(_gsl_matrix_float_const_view));
				*result = gsl_matrix_float_const_submatrix ((gsl_matrix_float const*)$m, (size_t const)$i, (size_t const)$j, (size_t const)$n1, (size_t const)$n2);
				return result;
			]"
		end

	c_gsl_matrix_float_const_row (m: POINTER; i: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_const_view *result = (_gsl_vector_float_const_view*) malloc (sizeof(_gsl_vector_float_const_view));
				*result = gsl_matrix_float_const_row ((gsl_matrix_float const*)$m, (size_t const)$i);
				return result;
			]"
		end

	c_gsl_matrix_float_const_column (m: POINTER; j: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_const_view *result = (_gsl_vector_float_const_view*) malloc (sizeof(_gsl_vector_float_const_view));
				*result = gsl_matrix_float_const_column ((gsl_matrix_float const*)$m, (size_t const)$j);
				return result;
			]"
		end

	c_gsl_matrix_float_const_diagonal (m: POINTER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_const_view *result = (_gsl_vector_float_const_view*) malloc (sizeof(_gsl_vector_float_const_view));
				*result = gsl_matrix_float_const_diagonal ((gsl_matrix_float const*)$m);
				return result;
			]"
		end

	c_gsl_matrix_float_const_subdiagonal (m: POINTER; k: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_const_view *result = (_gsl_vector_float_const_view*) malloc (sizeof(_gsl_vector_float_const_view));
				*result = gsl_matrix_float_const_subdiagonal ((gsl_matrix_float const*)$m, (size_t const)$k);
				return result;
			]"
		end

	c_gsl_matrix_float_const_superdiagonal (m: POINTER; k: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_const_view *result = (_gsl_vector_float_const_view*) malloc (sizeof(_gsl_vector_float_const_view));
				*result = gsl_matrix_float_const_superdiagonal ((gsl_matrix_float const*)$m, (size_t const)$k);
				return result;
			]"
		end

	c_gsl_matrix_float_const_subrow (m: POINTER; i: INTEGER; offset: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_const_view *result = (_gsl_vector_float_const_view*) malloc (sizeof(_gsl_vector_float_const_view));
				*result = gsl_matrix_float_const_subrow ((gsl_matrix_float const*)$m, (size_t const)$i, (size_t const)$offset, (size_t const)$n);
				return result;
			]"
		end

	c_gsl_matrix_float_const_subcolumn (m: POINTER; j: INTEGER; offset: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_const_view *result = (_gsl_vector_float_const_view*) malloc (sizeof(_gsl_vector_float_const_view));
				*result = gsl_matrix_float_const_subcolumn ((gsl_matrix_float const*)$m, (size_t const)$j, (size_t const)$offset, (size_t const)$n);
				return result;
			]"
		end

	c_gsl_matrix_float_const_view_array (base: POINTER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_float_const_view *result = (_gsl_matrix_float_const_view*) malloc (sizeof(_gsl_matrix_float_const_view));
				*result = gsl_matrix_float_const_view_array ((float const*)$base, (size_t const)$n1, (size_t const)$n2);
				return result;
			]"
		end

	c_gsl_matrix_float_const_view_array_with_tda (base: POINTER; n1: INTEGER; n2: INTEGER; tda: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_float_const_view *result = (_gsl_matrix_float_const_view*) malloc (sizeof(_gsl_matrix_float_const_view));
				*result = gsl_matrix_float_const_view_array_with_tda ((float const*)$base, (size_t const)$n1, (size_t const)$n2, (size_t const)$tda);
				return result;
			]"
		end

	c_gsl_matrix_float_const_view_vector (v: POINTER; n1: INTEGER; n2: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_float_const_view *result = (_gsl_matrix_float_const_view*) malloc (sizeof(_gsl_matrix_float_const_view));
				*result = gsl_matrix_float_const_view_vector ((gsl_vector_float const*)$v, (size_t const)$n1, (size_t const)$n2);
				return result;
			]"
		end

	c_gsl_matrix_float_const_view_vector_with_tda (v: POINTER; n1: INTEGER; n2: INTEGER; tda: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_matrix_float_const_view *result = (_gsl_matrix_float_const_view*) malloc (sizeof(_gsl_matrix_float_const_view));
				*result = gsl_matrix_float_const_view_vector_with_tda ((gsl_vector_float const*)$v, (size_t const)$n1, (size_t const)$n2, (size_t const)$tda);
				return result;
			]"
		end

	c_gsl_matrix_float_set_zero (m: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_float_set_zero ((gsl_matrix_float*)$m);
			]"
		end

	c_gsl_matrix_float_set_identity (m: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_float_set_identity ((gsl_matrix_float*)$m);
			]"
		end

	c_gsl_matrix_float_set_all (m: POINTER; x: REAL)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_float_set_all ((gsl_matrix_float*)$m, (float)$x);
			]"
		end

	c_gsl_matrix_float_fread (stream: POINTER; m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_fread ((FILE*)$stream, (gsl_matrix_float*)$m);
			]"
		end

	c_gsl_matrix_float_fwrite (stream: POINTER; m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_fwrite ((FILE*)$stream, (gsl_matrix_float const*)$m);
			]"
		end

	c_gsl_matrix_float_fscanf (stream: POINTER; m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_fscanf ((FILE*)$stream, (gsl_matrix_float*)$m);
			]"
		end

	c_gsl_matrix_float_fprintf (stream: POINTER; m: POINTER; format: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_fprintf ((FILE*)$stream, (gsl_matrix_float const*)$m, (char const*)$format);
			]"
		end

	c_gsl_matrix_float_memcpy (dest: POINTER; src: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_memcpy ((gsl_matrix_float*)$dest, (gsl_matrix_float const*)$src);
			]"
		end

	c_gsl_matrix_float_swap (m1: POINTER; m2: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_swap ((gsl_matrix_float*)$m1, (gsl_matrix_float*)$m2);
			]"
		end

	c_gsl_matrix_float_tricpy (uplo: INTEGER; diag: INTEGER; dest: POINTER; src: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_tricpy ((CBLAS_UPLO_t)$uplo, (CBLAS_DIAG_t)$diag, (gsl_matrix_float*)$dest, (gsl_matrix_float const*)$src);
			]"
		end

	c_gsl_matrix_float_swap_rows (m: POINTER; i: INTEGER; j: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_swap_rows ((gsl_matrix_float*)$m, (size_t const)$i, (size_t const)$j);
			]"
		end

	c_gsl_matrix_float_swap_columns (m: POINTER; i: INTEGER; j: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_swap_columns ((gsl_matrix_float*)$m, (size_t const)$i, (size_t const)$j);
			]"
		end

	c_gsl_matrix_float_swap_rowcol (m: POINTER; i: INTEGER; j: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_swap_rowcol ((gsl_matrix_float*)$m, (size_t const)$i, (size_t const)$j);
			]"
		end

	c_gsl_matrix_float_transpose (m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_transpose ((gsl_matrix_float*)$m);
			]"
		end

	c_gsl_matrix_float_transpose_memcpy (dest: POINTER; src: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_transpose_memcpy ((gsl_matrix_float*)$dest, (gsl_matrix_float const*)$src);
			]"
		end

	c_gsl_matrix_float_transpose_tricpy (uplo_src: INTEGER; diag: INTEGER; dest: POINTER; src: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_transpose_tricpy ((CBLAS_UPLO_t)$uplo_src, (CBLAS_DIAG_t)$diag, (gsl_matrix_float*)$dest, (gsl_matrix_float const*)$src);
			]"
		end

	c_gsl_matrix_float_max (m: POINTER): REAL
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_max ((gsl_matrix_float const*)$m);
			]"
		end

	c_gsl_matrix_float_min (m: POINTER): REAL
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_min ((gsl_matrix_float const*)$m);
			]"
		end

	c_gsl_matrix_float_minmax (m: POINTER; min_out: POINTER; max_out: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_float_minmax ((gsl_matrix_float const*)$m, (float*)$min_out, (float*)$max_out);
			]"
		end

	c_gsl_matrix_float_max_index (m: POINTER; imax: POINTER; jmax: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_float_max_index ((gsl_matrix_float const*)$m, (size_t*)$imax, (size_t*)$jmax);
			]"
		end

	c_gsl_matrix_float_min_index (m: POINTER; imin: POINTER; jmin: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_float_min_index ((gsl_matrix_float const*)$m, (size_t*)$imin, (size_t*)$jmin);
			]"
		end

	c_gsl_matrix_float_minmax_index (m: POINTER; imin: POINTER; jmin: POINTER; imax: POINTER; jmax: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_float_minmax_index ((gsl_matrix_float const*)$m, (size_t*)$imin, (size_t*)$jmin, (size_t*)$imax, (size_t*)$jmax);
			]"
		end

	c_gsl_matrix_float_equal (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_equal ((gsl_matrix_float const*)$a, (gsl_matrix_float const*)$b);
			]"
		end

	c_gsl_matrix_float_isnull (m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_isnull ((gsl_matrix_float const*)$m);
			]"
		end

	c_gsl_matrix_float_ispos (m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_ispos ((gsl_matrix_float const*)$m);
			]"
		end

	c_gsl_matrix_float_isneg (m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_isneg ((gsl_matrix_float const*)$m);
			]"
		end

	c_gsl_matrix_float_isnonneg (m: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_isnonneg ((gsl_matrix_float const*)$m);
			]"
		end

	c_gsl_matrix_float_add (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_add ((gsl_matrix_float*)$a, (gsl_matrix_float const*)$b);
			]"
		end

	c_gsl_matrix_float_sub (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_sub ((gsl_matrix_float*)$a, (gsl_matrix_float const*)$b);
			]"
		end

	c_gsl_matrix_float_mul_elements (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_mul_elements ((gsl_matrix_float*)$a, (gsl_matrix_float const*)$b);
			]"
		end

	c_gsl_matrix_float_div_elements (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_div_elements ((gsl_matrix_float*)$a, (gsl_matrix_float const*)$b);
			]"
		end

	c_gsl_matrix_float_scale (a: POINTER; x: REAL_64): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_scale ((gsl_matrix_float*)$a, (double const)$x);
			]"
		end

	c_gsl_matrix_float_add_constant (a: POINTER; x: REAL_64): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_add_constant ((gsl_matrix_float*)$a, (double const)$x);
			]"
		end

	c_gsl_matrix_float_add_diagonal (a: POINTER; x: REAL_64): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_add_diagonal ((gsl_matrix_float*)$a, (double const)$x);
			]"
		end

	c_gsl_matrix_float_get_row (v: POINTER; m: POINTER; i: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_get_row ((gsl_vector_float*)$v, (gsl_matrix_float const*)$m, (size_t const)$i);
			]"
		end

	c_gsl_matrix_float_get_col (v: POINTER; m: POINTER; j: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_get_col ((gsl_vector_float*)$v, (gsl_matrix_float const*)$m, (size_t const)$j);
			]"
		end

	c_gsl_matrix_float_set_row (m: POINTER; i: INTEGER; v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_set_row ((gsl_matrix_float*)$m, (size_t const)$i, (gsl_vector_float const*)$v);
			]"
		end

	c_gsl_matrix_float_set_col (m: POINTER; j: INTEGER; v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_set_col ((gsl_matrix_float*)$m, (size_t const)$j, (gsl_vector_float const*)$v);
			]"
		end

	c_gsl_matrix_float_get (m: POINTER; i: INTEGER; j: INTEGER): REAL
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_get ((gsl_matrix_float const*)$m, (size_t const)$i, (size_t const)$j);
			]"
		end

	c_gsl_matrix_float_set (m: POINTER; i: INTEGER; j: INTEGER; x: REAL)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_matrix_float_set ((gsl_matrix_float*)$m, (size_t const)$i, (size_t const)$j, (float const)$x);
			]"
		end

	c_gsl_matrix_float_ptr (m: POINTER; i: INTEGER; j: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_ptr ((gsl_matrix_float*)$m, (size_t const)$i, (size_t const)$j);
			]"
		end

	c_gsl_matrix_float_const_ptr (m: POINTER; i: INTEGER; j: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_matrix_float_const_ptr ((gsl_matrix_float const*)$m, (size_t const)$i, (size_t const)$j);
			]"
		end

feature -- Externals Address

end