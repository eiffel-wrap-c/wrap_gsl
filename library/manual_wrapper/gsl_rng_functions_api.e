note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GSL_RNG_FUNCTIONS_API


feature -- Access

	gsl_rng_types_setup: detachable GSL_RNG_TYPE_STRUCT_API
		do
			if attached c_gsl_rng_types_setup as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_rng_alloc (t: GSL_RNG_TYPE_STRUCT_API): detachable GSL_RNG_STRUCT_API
		do
			if attached c_gsl_rng_alloc (t.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_rng_memcpy (dest: GSL_RNG_STRUCT_API; src: GSL_RNG_STRUCT_API): INTEGER
		do
			Result := c_gsl_rng_memcpy (dest.item, src.item)
		end

	gsl_rng_clone (r: GSL_RNG_STRUCT_API): detachable GSL_RNG_STRUCT_API
		do
			if attached c_gsl_rng_clone (r.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_rng_free (r: GSL_RNG_STRUCT_API)
		do
			c_gsl_rng_free (r.item)
		end

	gsl_rng_set (r: GSL_RNG_STRUCT_API; seed: INTEGER)
		do
			c_gsl_rng_set (r.item, seed)
		end

	gsl_rng_max (r: GSL_RNG_STRUCT_API): INTEGER
		do
			Result := c_gsl_rng_max (r.item)
		end

	gsl_rng_min (r: GSL_RNG_STRUCT_API): INTEGER
		do
			Result := c_gsl_rng_min (r.item)
		end

	gsl_rng_name (r: GSL_RNG_STRUCT_API): POINTER
		do
			Result := c_gsl_rng_name (r.item)
		end

	gsl_rng_fread (stream: FILE; r: GSL_RNG_STRUCT_API): INTEGER
		do
			Result := c_gsl_rng_fread (stream.file_pointer, r.item)
		end

	gsl_rng_fwrite (stream: FILE; r: GSL_RNG_STRUCT_API): INTEGER
		do
			Result := c_gsl_rng_fwrite (stream.file_pointer, r.item)
		end

	gsl_rng_size (r: GSL_RNG_STRUCT_API): INTEGER
		do
			Result := c_gsl_rng_size (r.item)
		end

	gsl_rng_state (r: GSL_RNG_STRUCT_API): POINTER
		do
			Result := c_gsl_rng_state (r.item)
		end

	gsl_rng_print_state (r: GSL_RNG_STRUCT_API)
		do
			c_gsl_rng_print_state (r.item)
		end

	gsl_rng_env_setup: detachable GSL_RNG_TYPE_STRUCT_API
		do
			if attached c_gsl_rng_env_setup as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_rng_get (r: GSL_RNG_STRUCT_API): INTEGER
		do
			Result := c_gsl_rng_get (r.item)
		end

	gsl_rng_uniform (r: GSL_RNG_STRUCT_API): REAL_64
		do
			Result := c_gsl_rng_uniform (r.item)
		end

	gsl_rng_uniform_pos (r: GSL_RNG_STRUCT_API): REAL_64
		do
			Result := c_gsl_rng_uniform_pos (r.item)
		end

	gsl_rng_uniform_int (r: GSL_RNG_STRUCT_API; n: INTEGER): INTEGER
		do
			Result := c_gsl_rng_uniform_int (r.item, n)
		end

feature -- Externals

	c_gsl_rng_types_setup: POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_types_setup ();
			]"
		end

	c_gsl_rng_alloc (t: POINTER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_alloc ((gsl_rng_type const*)$t);
			]"
		end

	c_gsl_rng_memcpy (dest: POINTER; src: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_memcpy ((gsl_rng*)$dest, (gsl_rng const*)$src);
			]"
		end

	c_gsl_rng_clone (r: POINTER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_clone ((gsl_rng const*)$r);
			]"
		end

	c_gsl_rng_free (r: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_rng_free ((gsl_rng*)$r);
			]"
		end

	c_gsl_rng_set (r: POINTER; seed: INTEGER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_rng_set ((gsl_rng const*)$r, (unsigned long int)$seed);
			]"
		end

	c_gsl_rng_max (r: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_max ((gsl_rng const*)$r);
			]"
		end

	c_gsl_rng_min (r: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_min ((gsl_rng const*)$r);
			]"
		end

	c_gsl_rng_name (r: POINTER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_name ((gsl_rng const*)$r);
			]"
		end

	c_gsl_rng_fread (stream: POINTER; r: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_fread ((FILE*)$stream, (gsl_rng*)$r);
			]"
		end

	c_gsl_rng_fwrite (stream: POINTER; r: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_fwrite ((FILE*)$stream, (gsl_rng const*)$r);
			]"
		end

	c_gsl_rng_size (r: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_size ((gsl_rng const*)$r);
			]"
		end

	c_gsl_rng_state (r: POINTER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_state ((gsl_rng const*)$r);
			]"
		end

	c_gsl_rng_print_state (r: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_rng_print_state ((gsl_rng const*)$r);
			]"
		end

	c_gsl_rng_env_setup: POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_env_setup ();
			]"
		end

	c_gsl_rng_get (r: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_get ((gsl_rng const*)$r);
			]"
		end

	c_gsl_rng_uniform (r: POINTER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_uniform ((gsl_rng const*)$r);
			]"
		end

	c_gsl_rng_uniform_pos (r: POINTER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_uniform_pos ((gsl_rng const*)$r);
			]"
		end

	c_gsl_rng_uniform_int (r: POINTER; n: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_rng_uniform_int ((gsl_rng const*)$r, (unsigned long int)$n);
			]"
		end

feature -- Externals Address

end