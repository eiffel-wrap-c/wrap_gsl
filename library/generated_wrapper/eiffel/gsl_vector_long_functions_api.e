note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GSL_VECTOR_LONG_FUNCTIONS_API


feature -- Access

	gsl_vector_long_alloc (n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_alloc ((size_t const)$n);
			]"
		end

	gsl_vector_long_calloc (n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_calloc ((size_t const)$n);
			]"
		end

	gsl_vector_long_alloc_from_block (b: GSL_BLOCK_LONG_STRUCT_STRUCT_API; offset: INTEGER; n: INTEGER; stride: INTEGER): detachable GSL_VECTOR_LONG_STRUCT_API 
		do
			if attached c_gsl_vector_long_alloc_from_block (b.item, offset, n, stride) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_long_alloc_from_vector (v: GSL_VECTOR_LONG_STRUCT_API; offset: INTEGER; n: INTEGER; stride: INTEGER): detachable GSL_VECTOR_LONG_STRUCT_API 
		do
			if attached c_gsl_vector_long_alloc_from_vector (v.item, offset, n, stride) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_long_free (v: GSL_VECTOR_LONG_STRUCT_API) 
		do
			c_gsl_vector_long_free (v.item)
		end

	gsl_vector_long_view_array (v: POINTER; n: INTEGER): detachable GSL_VECTOR_LONG_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_long_view_array (v, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_long_view_array_with_stride (base: POINTER; stride: INTEGER; n: INTEGER): detachable GSL_VECTOR_LONG_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_long_view_array_with_stride (base, stride, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_long_const_view_array (v: POINTER; n: INTEGER): detachable GSL_VECTOR_LONG_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_long_const_view_array (v, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_long_const_view_array_with_stride (base: POINTER; stride: INTEGER; n: INTEGER): detachable GSL_VECTOR_LONG_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_long_const_view_array_with_stride (base, stride, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_long_subvector (v: GSL_VECTOR_LONG_STRUCT_API; i: INTEGER; n: INTEGER): detachable GSL_VECTOR_LONG_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_long_subvector (v.item, i, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_long_subvector_with_stride (v: GSL_VECTOR_LONG_STRUCT_API; i: INTEGER; stride: INTEGER; n: INTEGER): detachable GSL_VECTOR_LONG_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_long_subvector_with_stride (v.item, i, stride, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_long_const_subvector (v: GSL_VECTOR_LONG_STRUCT_API; i: INTEGER; n: INTEGER): detachable GSL_VECTOR_LONG_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_long_const_subvector (v.item, i, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_long_const_subvector_with_stride (v: GSL_VECTOR_LONG_STRUCT_API; i: INTEGER; stride: INTEGER; n: INTEGER): detachable GSL_VECTOR_LONG_VIEW_STRUCT_API 
		do
			if attached c_gsl_vector_long_const_subvector_with_stride (v.item, i, stride, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_vector_long_set_zero (v: GSL_VECTOR_LONG_STRUCT_API) 
		do
			c_gsl_vector_long_set_zero (v.item)
		end

	gsl_vector_long_set_all (v: GSL_VECTOR_LONG_STRUCT_API; x: INTEGER) 
		do
			c_gsl_vector_long_set_all (v.item, x)
		end

	gsl_vector_long_set_basis (v: GSL_VECTOR_LONG_STRUCT_API; i: INTEGER): INTEGER 
		do
			Result := c_gsl_vector_long_set_basis (v.item, i)
		end

	gsl_vector_long_fread (stream: IOBUF_STRUCT_API; v: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_fread (stream.item, v.item)
		end

	gsl_vector_long_fwrite (stream: IOBUF_STRUCT_API; v: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_fwrite (stream.item, v.item)
		end

	gsl_vector_long_fscanf (stream: IOBUF_STRUCT_API; v: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_fscanf (stream.item, v.item)
		end

	gsl_vector_long_fprintf (stream: IOBUF_STRUCT_API; v: GSL_VECTOR_LONG_STRUCT_API; format: STRING): INTEGER 
		local
			format_c_string: C_STRING
		do
			create format_c_string.make (format)
			Result := c_gsl_vector_long_fprintf (stream.item, v.item, format_c_string.item)
		end

	gsl_vector_long_memcpy (dest: GSL_VECTOR_LONG_STRUCT_API; src: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_memcpy (dest.item, src.item)
		end

	gsl_vector_long_reverse (v: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_reverse (v.item)
		end

	gsl_vector_long_swap (v: GSL_VECTOR_LONG_STRUCT_API; w: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_swap (v.item, w.item)
		end

	gsl_vector_long_swap_elements (v: GSL_VECTOR_LONG_STRUCT_API; i: INTEGER; j: INTEGER): INTEGER 
		do
			Result := c_gsl_vector_long_swap_elements (v.item, i, j)
		end

	gsl_vector_long_max (v: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_max (v.item)
		end

	gsl_vector_long_min (v: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_min (v.item)
		end

	gsl_vector_long_minmax (v: GSL_VECTOR_LONG_STRUCT_API; min_out: POINTER; max_out: POINTER) 
		do
			c_gsl_vector_long_minmax (v.item, min_out, max_out)
		end

	gsl_vector_long_max_index (v: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_max_index (v.item)
		end

	gsl_vector_long_min_index (v: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_min_index (v.item)
		end

	gsl_vector_long_minmax_index (v: GSL_VECTOR_LONG_STRUCT_API; imin: POINTER; imax: POINTER) 
		do
			c_gsl_vector_long_minmax_index (v.item, imin, imax)
		end

	gsl_vector_long_add (a: GSL_VECTOR_LONG_STRUCT_API; b: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_add (a.item, b.item)
		end

	gsl_vector_long_sub (a: GSL_VECTOR_LONG_STRUCT_API; b: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_sub (a.item, b.item)
		end

	gsl_vector_long_mul (a: GSL_VECTOR_LONG_STRUCT_API; b: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_mul (a.item, b.item)
		end

	gsl_vector_long_div (a: GSL_VECTOR_LONG_STRUCT_API; b: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_div (a.item, b.item)
		end

	gsl_vector_long_scale (a: GSL_VECTOR_LONG_STRUCT_API; x: REAL_64): INTEGER 
		do
			Result := c_gsl_vector_long_scale (a.item, x)
		end

	gsl_vector_long_add_constant (a: GSL_VECTOR_LONG_STRUCT_API; x: REAL_64): INTEGER 
		do
			Result := c_gsl_vector_long_add_constant (a.item, x)
		end

	gsl_vector_long_equal (u: GSL_VECTOR_LONG_STRUCT_API; v: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_equal (u.item, v.item)
		end

	gsl_vector_long_isnull (v: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_isnull (v.item)
		end

	gsl_vector_long_ispos (v: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_ispos (v.item)
		end

	gsl_vector_long_isneg (v: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_isneg (v.item)
		end

	gsl_vector_long_isnonneg (v: GSL_VECTOR_LONG_STRUCT_API): INTEGER 
		do
			Result := c_gsl_vector_long_isnonneg (v.item)
		end

	gsl_vector_long_get (v: GSL_VECTOR_LONG_STRUCT_API; i: INTEGER): INTEGER 
		do
			Result := c_gsl_vector_long_get (v.item, i)
		end

	gsl_vector_long_set (v: GSL_VECTOR_LONG_STRUCT_API; i: INTEGER; x: INTEGER) 
		do
			c_gsl_vector_long_set (v.item, i, x)
		end

	gsl_vector_long_ptr (v: GSL_VECTOR_LONG_STRUCT_API; i: INTEGER): POINTER 
		do
			Result := c_gsl_vector_long_ptr (v.item, i)
		end

	gsl_vector_long_const_ptr (v: GSL_VECTOR_LONG_STRUCT_API; i: INTEGER): POINTER 
		do
			Result := c_gsl_vector_long_const_ptr (v.item, i)
		end

feature -- Externals

	c_gsl_vector_long_alloc_from_block (b: POINTER; offset: INTEGER; n: INTEGER; stride: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_alloc_from_block ((gsl_block_long*)$b, (size_t const)$offset, (size_t const)$n, (size_t const)$stride);
			]"
		end

	c_gsl_vector_long_alloc_from_vector (v: POINTER; offset: INTEGER; n: INTEGER; stride: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_alloc_from_vector ((gsl_vector_long*)$v, (size_t const)$offset, (size_t const)$n, (size_t const)$stride);
			]"
		end

	c_gsl_vector_long_free (v: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_vector_long_free ((gsl_vector_long*)$v);
			]"
		end

	c_gsl_vector_long_view_array (v: POINTER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_long_view *result = (_gsl_vector_long_view*) malloc (sizeof(_gsl_vector_long_view));
				*result = gsl_vector_long_view_array ((long*)$v, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_long_view_array_with_stride (base: POINTER; stride: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_long_view *result = (_gsl_vector_long_view*) malloc (sizeof(_gsl_vector_long_view));
				*result = gsl_vector_long_view_array_with_stride ((long*)$base, (size_t)$stride, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_long_const_view_array (v: POINTER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_long_const_view *result = (_gsl_vector_long_const_view*) malloc (sizeof(_gsl_vector_long_const_view));
				*result = gsl_vector_long_const_view_array ((long const*)$v, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_long_const_view_array_with_stride (base: POINTER; stride: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_long_const_view *result = (_gsl_vector_long_const_view*) malloc (sizeof(_gsl_vector_long_const_view));
				*result = gsl_vector_long_const_view_array_with_stride ((long const*)$base, (size_t)$stride, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_long_subvector (v: POINTER; i: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_long_view *result = (_gsl_vector_long_view*) malloc (sizeof(_gsl_vector_long_view));
				*result = gsl_vector_long_subvector ((gsl_vector_long*)$v, (size_t)$i, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_long_subvector_with_stride (v: POINTER; i: INTEGER; stride: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_long_view *result = (_gsl_vector_long_view*) malloc (sizeof(_gsl_vector_long_view));
				*result = gsl_vector_long_subvector_with_stride ((gsl_vector_long*)$v, (size_t)$i, (size_t)$stride, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_long_const_subvector (v: POINTER; i: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_long_const_view *result = (_gsl_vector_long_const_view*) malloc (sizeof(_gsl_vector_long_const_view));
				*result = gsl_vector_long_const_subvector ((gsl_vector_long const*)$v, (size_t)$i, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_long_const_subvector_with_stride (v: POINTER; i: INTEGER; stride: INTEGER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"

		alias
			"[
				_gsl_vector_long_const_view *result = (_gsl_vector_long_const_view*) malloc (sizeof(_gsl_vector_long_const_view));
				*result = gsl_vector_long_const_subvector_with_stride ((gsl_vector_long const*)$v, (size_t)$i, (size_t)$stride, (size_t)$n);
				return result;
			]"
		end

	c_gsl_vector_long_set_zero (v: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_vector_long_set_zero ((gsl_vector_long*)$v);
			]"
		end

	c_gsl_vector_long_set_all (v: POINTER; x: INTEGER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_vector_long_set_all ((gsl_vector_long*)$v, (long)$x);
			]"
		end

	c_gsl_vector_long_set_basis (v: POINTER; i: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_set_basis ((gsl_vector_long*)$v, (size_t)$i);
			]"
		end

	c_gsl_vector_long_fread (stream: POINTER; v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_fread ((FILE*)$stream, (gsl_vector_long*)$v);
			]"
		end

	c_gsl_vector_long_fwrite (stream: POINTER; v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_fwrite ((FILE*)$stream, (gsl_vector_long const*)$v);
			]"
		end

	c_gsl_vector_long_fscanf (stream: POINTER; v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_fscanf ((FILE*)$stream, (gsl_vector_long*)$v);
			]"
		end

	c_gsl_vector_long_fprintf (stream: POINTER; v: POINTER; format: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_fprintf ((FILE*)$stream, (gsl_vector_long const*)$v, (char const*)$format);
			]"
		end

	c_gsl_vector_long_memcpy (dest: POINTER; src: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_memcpy ((gsl_vector_long*)$dest, (gsl_vector_long const*)$src);
			]"
		end

	c_gsl_vector_long_reverse (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_reverse ((gsl_vector_long*)$v);
			]"
		end

	c_gsl_vector_long_swap (v: POINTER; w: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_swap ((gsl_vector_long*)$v, (gsl_vector_long*)$w);
			]"
		end

	c_gsl_vector_long_swap_elements (v: POINTER; i: INTEGER; j: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_swap_elements ((gsl_vector_long*)$v, (size_t const)$i, (size_t const)$j);
			]"
		end

	c_gsl_vector_long_max (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_max ((gsl_vector_long const*)$v);
			]"
		end

	c_gsl_vector_long_min (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_min ((gsl_vector_long const*)$v);
			]"
		end

	c_gsl_vector_long_minmax (v: POINTER; min_out: POINTER; max_out: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_vector_long_minmax ((gsl_vector_long const*)$v, (long*)$min_out, (long*)$max_out);
			]"
		end

	c_gsl_vector_long_max_index (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_max_index ((gsl_vector_long const*)$v);
			]"
		end

	c_gsl_vector_long_min_index (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_min_index ((gsl_vector_long const*)$v);
			]"
		end

	c_gsl_vector_long_minmax_index (v: POINTER; imin: POINTER; imax: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_vector_long_minmax_index ((gsl_vector_long const*)$v, (size_t*)$imin, (size_t*)$imax);
			]"
		end

	c_gsl_vector_long_add (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_add ((gsl_vector_long*)$a, (gsl_vector_long const*)$b);
			]"
		end

	c_gsl_vector_long_sub (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_sub ((gsl_vector_long*)$a, (gsl_vector_long const*)$b);
			]"
		end

	c_gsl_vector_long_mul (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_mul ((gsl_vector_long*)$a, (gsl_vector_long const*)$b);
			]"
		end

	c_gsl_vector_long_div (a: POINTER; b: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_div ((gsl_vector_long*)$a, (gsl_vector_long const*)$b);
			]"
		end

	c_gsl_vector_long_scale (a: POINTER; x: REAL_64): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_scale ((gsl_vector_long*)$a, (double const)$x);
			]"
		end

	c_gsl_vector_long_add_constant (a: POINTER; x: REAL_64): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_add_constant ((gsl_vector_long*)$a, (double const)$x);
			]"
		end

	c_gsl_vector_long_equal (u: POINTER; v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_equal ((gsl_vector_long const*)$u, (gsl_vector_long const*)$v);
			]"
		end

	c_gsl_vector_long_isnull (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_isnull ((gsl_vector_long const*)$v);
			]"
		end

	c_gsl_vector_long_ispos (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_ispos ((gsl_vector_long const*)$v);
			]"
		end

	c_gsl_vector_long_isneg (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_isneg ((gsl_vector_long const*)$v);
			]"
		end

	c_gsl_vector_long_isnonneg (v: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_isnonneg ((gsl_vector_long const*)$v);
			]"
		end

	c_gsl_vector_long_get (v: POINTER; i: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_get ((gsl_vector_long const*)$v, (size_t const)$i);
			]"
		end

	c_gsl_vector_long_set (v: POINTER; i: INTEGER; x: INTEGER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_vector_long_set ((gsl_vector_long*)$v, (size_t const)$i, (long)$x);
			]"
		end

	c_gsl_vector_long_ptr (v: POINTER; i: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_ptr ((gsl_vector_long*)$v, (size_t const)$i);
			]"
		end

	c_gsl_vector_long_const_ptr (v: POINTER; i: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_vector_long_const_ptr ((gsl_vector_long const*)$v, (size_t const)$i);
			]"
		end

feature -- Externals Address

end
