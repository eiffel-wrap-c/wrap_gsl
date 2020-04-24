note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GSL_VECTOR_FLOAT_FUNCTIONS_API


feature -- Access

	gsl_vector_float_alloc (n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_alloc ((size_t const)$n);
			]"
		end

	gsl_vector_float_calloc (n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_calloc ((size_t const)$n);
			]"
		end

	gsl_vector_float_alloc_from_block (b: GSL_BLOCK_FLOAT_STRUCT_STRUCT_API; offset: INTEGER; n: INTEGER; stride: INTEGER): detachable GSL_VECTOR_FLOAT_STRUCT_API 
		do
			if attached c_gsl_vector_float_alloc_from_block (b.item, offset, n, stride) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_float_alloc_from_vector (v: GSL_VECTOR_FLOAT_STRUCT_API; offset: INTEGER; n: INTEGER; stride: INTEGER): detachable GSL_VECTOR_FLOAT_STRUCT_API 
		do
			if attached c_gsl_vector_float_alloc_from_vector (v.item, offset, n, stride) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_float_free (v: GSL_VECTOR_FLOAT_STRUCT_API) 
		do
			c_gsl_vector_float_free (v.item)
		end

	gsl_vector_float_view_array (v: POINTER; n: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_float_view_array (v, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_float_view_array_with_stride (base: POINTER; stride: INTEGER; n: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_float_view_array_with_stride (base, stride, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_float_const_view_array (v: POINTER; n: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_float_const_view_array (v, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_float_const_view_array_with_stride (base: POINTER; stride: INTEGER; n: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_float_const_view_array_with_stride (base, stride, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_float_subvector (v: GSL_VECTOR_FLOAT_STRUCT_API; i: INTEGER; n: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_float_subvector (v.item, i, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_float_subvector_with_stride (v: GSL_VECTOR_FLOAT_STRUCT_API; i: INTEGER; stride: INTEGER; n: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_float_subvector_with_stride (v.item, i, stride, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_float_const_subvector (v: GSL_VECTOR_FLOAT_STRUCT_API; i: INTEGER; n: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_float_const_subvector (v.item, i, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_float_const_subvector_with_stride (v: GSL_VECTOR_FLOAT_STRUCT_API; i: INTEGER; stride: INTEGER; n: INTEGER): detachable GSL_VECTOR_FLOAT_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_float_const_subvector_with_stride (v.item, i, stride, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_float_set_zero (v: GSL_VECTOR_FLOAT_STRUCT_API) 
		do
			c_gsl_vector_float_set_zero (v.item)
		end

	gsl_vector_float_set_all (v: GSL_VECTOR_FLOAT_STRUCT_API; x: REAL) 
		do
			c_gsl_vector_float_set_all (v.item, x)
		end

	gsl_vector_float_set_basis (v: GSL_VECTOR_FLOAT_STRUCT_API; i: INTEGER): INTEGER 
		do
			Result := c_gsl_vector_float_set_basis (v.item, i)
		end

	gsl_vector_float_fread (stream: IOBUF_STRUCT_API; v: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_fread (stream.item, v.item)
		end

	gsl_vector_float_fwrite (stream: IOBUF_STRUCT_API; v: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_fwrite (stream.item, v.item)
		end

	gsl_vector_float_fscanf (stream: IOBUF_STRUCT_API; v: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_fscanf (stream.item, v.item)
		end

	gsl_vector_float_fprintf (stream: IOBUF_STRUCT_API; v: GSL_VECTOR_FLOAT_STRUCT_API; format: STRING): INTEGER 
		local
			format_c_string: C_STRING
		do
			create format_c_string.make (format)
			Result := c_gsl_vector_float_fprintf (stream.item, v.item, format_c_string.item)
		end

	gsl_vector_float_memcpy (dest: GSL_VECTOR_FLOAT_STRUCT_API; src: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_memcpy (dest.item, src.item)
		end

	gsl_vector_float_reverse (v: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_reverse (v.item)
		end

	gsl_vector_float_swap (v: GSL_VECTOR_FLOAT_STRUCT_API; w: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_swap (v.item, w.item)
		end

	gsl_vector_float_swap_elements (v: GSL_VECTOR_FLOAT_STRUCT_API; i: INTEGER; j: INTEGER): INTEGER 
		do
			Result := c_gsl_vector_float_swap_elements (v.item, i, j)
		end

	gsl_vector_float_max (v: GSL_VECTOR_FLOAT_STRUCT_API): REAL 
		do
			Result := c_gsl_vector_float_max (v.item)
		end

	gsl_vector_float_min (v: GSL_VECTOR_FLOAT_STRUCT_API): REAL 
		do
			Result := c_gsl_vector_float_min (v.item)
		end

	gsl_vector_float_minmax (v: GSL_VECTOR_FLOAT_STRUCT_API; min_out: POINTER; max_out: POINTER) 
		do
			c_gsl_vector_float_minmax (v.item, min_out, max_out)
		end

	gsl_vector_float_max_index (v: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_max_index (v.item)
		end

	gsl_vector_float_min_index (v: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_min_index (v.item)
		end

	gsl_vector_float_minmax_index (v: GSL_VECTOR_FLOAT_STRUCT_API; imin: POINTER; imax: POINTER) 
		do
			c_gsl_vector_float_minmax_index (v.item, imin, imax)
		end

	gsl_vector_float_add (a: GSL_VECTOR_FLOAT_STRUCT_API; b: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_add (a.item, b.item)
		end

	gsl_vector_float_sub (a: GSL_VECTOR_FLOAT_STRUCT_API; b: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_sub (a.item, b.item)
		end

	gsl_vector_float_mul (a: GSL_VECTOR_FLOAT_STRUCT_API; b: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_mul (a.item, b.item)
		end

	gsl_vector_float_div (a: GSL_VECTOR_FLOAT_STRUCT_API; b: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_div (a.item, b.item)
		end

	gsl_vector_float_scale (a: GSL_VECTOR_FLOAT_STRUCT_API; x: REAL_64): INTEGER 
		do
			Result := c_gsl_vector_float_scale (a.item, x)
		end

	gsl_vector_float_add_constant (a: GSL_VECTOR_FLOAT_STRUCT_API; x: REAL_64): INTEGER 
		do
			Result := c_gsl_vector_float_add_constant (a.item, x)
		end

	gsl_vector_float_equal (u: GSL_VECTOR_FLOAT_STRUCT_API; v: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_equal (u.item, v.item)
		end

	gsl_vector_float_isnull (v: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_isnull (v.item)
		end

	gsl_vector_float_ispos (v: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_ispos (v.item)
		end

	gsl_vector_float_isneg (v: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_isneg (v.item)
		end

	gsl_vector_float_isnonneg (v: GSL_VECTOR_FLOAT_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_float_isnonneg (v.item)
		end

	gsl_vector_float_get (v: GSL_VECTOR_FLOAT_STRUCT_API; i: INTEGER): REAL 
		do
			Result := c_gsl_vector_float_get (v.item, i)
		end

	gsl_vector_float_set (v: GSL_VECTOR_FLOAT_STRUCT_API; i: INTEGER; x: REAL) 
		do
			c_gsl_vector_float_set (v.item, i, x)
		end

	gsl_vector_float_ptr (v: GSL_VECTOR_FLOAT_STRUCT_API; i: INTEGER): POINTER 
		do
			Result := c_gsl_vector_float_ptr (v.item, i)
		end

	gsl_vector_float_const_ptr (v: GSL_VECTOR_FLOAT_STRUCT_API; i: INTEGER): POINTER 
		do
			Result := c_gsl_vector_float_const_ptr (v.item, i)
		end

feature -- Externals

	c_gsl_vector_float_alloc_from_block (b: POINTER; offset: INTEGER; n: INTEGER; stride: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_alloc_from_block ((gsl_block_float*)$b, (size_t const)$offset, (size_t const)$n, (size_t const)$stride);
			]"
		end

	c_gsl_vector_float_alloc_from_vector (v: POINTER; offset: INTEGER; n: INTEGER; stride: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_alloc_from_vector ((gsl_vector_float*)$v, (size_t const)$offset, (size_t const)$n, (size_t const)$stride);
			]"
		end

	c_gsl_vector_float_free (v: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_vector_float_free ((gsl_vector_float*)$v);
			]"
		end

	c_gsl_vector_float_view_array (v: POINTER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_view *result = (_gsl_vector_float_view*) malloc (sizeof(_gsl_vector_float_view));
				*result = gsl_vector_float_view_array ((float*)$v, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_float_view_array_with_stride (base: POINTER; stride: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_view *result = (_gsl_vector_float_view*) malloc (sizeof(_gsl_vector_float_view));
				*result = gsl_vector_float_view_array_with_stride ((float*)$base, (size_t)$stride, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_float_const_view_array (v: POINTER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_const_view *result = (_gsl_vector_float_const_view*) malloc (sizeof(_gsl_vector_float_const_view));
				*result = gsl_vector_float_const_view_array ((float const*)$v, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_float_const_view_array_with_stride (base: POINTER; stride: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_const_view *result = (_gsl_vector_float_const_view*) malloc (sizeof(_gsl_vector_float_const_view));
				*result = gsl_vector_float_const_view_array_with_stride ((float const*)$base, (size_t)$stride, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_float_subvector (v: POINTER; i: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_view *result = (_gsl_vector_float_view*) malloc (sizeof(_gsl_vector_float_view));
				*result = gsl_vector_float_subvector ((gsl_vector_float*)$v, (size_t)$i, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_float_subvector_with_stride (v: POINTER; i: INTEGER; stride: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_view *result = (_gsl_vector_float_view*) malloc (sizeof(_gsl_vector_float_view));
				*result = gsl_vector_float_subvector_with_stride ((gsl_vector_float*)$v, (size_t)$i, (size_t)$stride, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_float_const_subvector (v: POINTER; i: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_const_view *result = (_gsl_vector_float_const_view*) malloc (sizeof(_gsl_vector_float_const_view));
				*result = gsl_vector_float_const_subvector ((gsl_vector_float const*)$v, (size_t)$i, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_float_const_subvector_with_stride (v: POINTER; i: INTEGER; stride: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_float_const_view *result = (_gsl_vector_float_const_view*) malloc (sizeof(_gsl_vector_float_const_view));
				*result = gsl_vector_float_const_subvector_with_stride ((gsl_vector_float const*)$v, (size_t)$i, (size_t)$stride, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_float_set_zero (v: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_vector_float_set_zero ((gsl_vector_float*)$v);
			]"
		end

	c_gsl_vector_float_set_all (v: POINTER; x: REAL)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_vector_float_set_all ((gsl_vector_float*)$v, (float)$x);
			]"
		end

	c_gsl_vector_float_set_basis (v: POINTER; i: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_set_basis ((gsl_vector_float*)$v, (size_t)$i);
			]"
		end

	c_gsl_vector_float_fread (stream: POINTER; v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_fread ((FILE*)$stream, (gsl_vector_float*)$v);
			]"
		end

	c_gsl_vector_float_fwrite (stream: POINTER; v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_fwrite ((FILE*)$stream, (gsl_vector_float const*)$v);
			]"
		end

	c_gsl_vector_float_fscanf (stream: POINTER; v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_fscanf ((FILE*)$stream, (gsl_vector_float*)$v);
			]"
		end

	c_gsl_vector_float_fprintf (stream: POINTER; v: POINTER; format: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_fprintf ((FILE*)$stream, (gsl_vector_float const*)$v, (char const*)$format);
			]"
		end

	c_gsl_vector_float_memcpy (dest: POINTER; src: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_memcpy ((gsl_vector_float*)$dest, (gsl_vector_float const*)$src);
			]"
		end

	c_gsl_vector_float_reverse (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_reverse ((gsl_vector_float*)$v);
			]"
		end

	c_gsl_vector_float_swap (v: POINTER; w: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_swap ((gsl_vector_float*)$v, (gsl_vector_float*)$w);
			]"
		end

	c_gsl_vector_float_swap_elements (v: POINTER; i: INTEGER; j: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_swap_elements ((gsl_vector_float*)$v, (size_t const)$i, (size_t const)$j);
			]"
		end

	c_gsl_vector_float_max (v: POINTER): REAL
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_max ((gsl_vector_float const*)$v);
			]"
		end

	c_gsl_vector_float_min (v: POINTER): REAL
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_min ((gsl_vector_float const*)$v);
			]"
		end

	c_gsl_vector_float_minmax (v: POINTER; min_out: POINTER; max_out: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_vector_float_minmax ((gsl_vector_float const*)$v, (float*)$min_out, (float*)$max_out);
			]"
		end

	c_gsl_vector_float_max_index (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_max_index ((gsl_vector_float const*)$v);
			]"
		end

	c_gsl_vector_float_min_index (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_min_index ((gsl_vector_float const*)$v);
			]"
		end

	c_gsl_vector_float_minmax_index (v: POINTER; imin: POINTER; imax: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_vector_float_minmax_index ((gsl_vector_float const*)$v, (size_t*)$imin, (size_t*)$imax);
			]"
		end

	c_gsl_vector_float_add (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_add ((gsl_vector_float*)$a, (gsl_vector_float const*)$b);
			]"
		end

	c_gsl_vector_float_sub (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_sub ((gsl_vector_float*)$a, (gsl_vector_float const*)$b);
			]"
		end

	c_gsl_vector_float_mul (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_mul ((gsl_vector_float*)$a, (gsl_vector_float const*)$b);
			]"
		end

	c_gsl_vector_float_div (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_div ((gsl_vector_float*)$a, (gsl_vector_float const*)$b);
			]"
		end

	c_gsl_vector_float_scale (a: POINTER; x: REAL_64): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_scale ((gsl_vector_float*)$a, (double const)$x);
			]"
		end

	c_gsl_vector_float_add_constant (a: POINTER; x: REAL_64): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_add_constant ((gsl_vector_float*)$a, (double const)$x);
			]"
		end

	c_gsl_vector_float_equal (u: POINTER; v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_equal ((gsl_vector_float const*)$u, (gsl_vector_float const*)$v);
			]"
		end

	c_gsl_vector_float_isnull (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_isnull ((gsl_vector_float const*)$v);
			]"
		end

	c_gsl_vector_float_ispos (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_ispos ((gsl_vector_float const*)$v);
			]"
		end

	c_gsl_vector_float_isneg (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_isneg ((gsl_vector_float const*)$v);
			]"
		end

	c_gsl_vector_float_isnonneg (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_isnonneg ((gsl_vector_float const*)$v);
			]"
		end

	c_gsl_vector_float_get (v: POINTER; i: INTEGER): REAL
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_get ((gsl_vector_float const*)$v, (size_t const)$i);
			]"
		end

	c_gsl_vector_float_set (v: POINTER; i: INTEGER; x: REAL)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_vector_float_set ((gsl_vector_float*)$v, (size_t const)$i, (float)$x);
			]"
		end

	c_gsl_vector_float_ptr (v: POINTER; i: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_ptr ((gsl_vector_float*)$v, (size_t const)$i);
			]"
		end

	c_gsl_vector_float_const_ptr (v: POINTER; i: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_float_const_ptr ((gsl_vector_float const*)$v, (size_t const)$i);
			]"
		end

feature -- Externals Address

end
