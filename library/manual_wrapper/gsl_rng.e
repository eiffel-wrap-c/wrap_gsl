note
	description: "Object representing functions or random number generators"
	date: "$Date$"
	revision: "$Revision$"
	eis: "name=GLS_RNG", "src=https://www.gnu.org/software/gsl/doc/html/rng.html?highlight=gsl_rng#c.gsl_rng", "protocol=uri"
class
	GSL_RNG

inherit

	GSL_RNG_FUNCTIONS_API


feature

	gsl_rng_default_seed: NATURAL_64
			-- The seed for the default random number generator.
			--|Defined as GSL_VAR unsigned long int gsl_rng_default_seed;
		note
			eis:"name=gsl_rng_default_seed", "src=https://www.gnu.org/software/gsl/doc/html/rng.html?highlight=gsl_rng_default_seed#c.gsl_rng_default_seed", "protocol=uri"
		external
			"c inline use <eif_gsl.h>"
		alias
			"gsl_rng_default_seed"
		end

	gsl_rng_default: GSL_RNG_TYPE_STRUCT_API
			-- Specifies the default random number generator.
		note
			eis:"name=gsl_rng_default", "src=https://www.gnu.org/software/gsl/doc/html/rng.html?highlight=gsl_rng_default_seed#c.gsl_rng_default", "protocol=uri"
		do
			create Result.make_by_pointer (c_gsl_rng_default)
		ensure
			instance_free: class
		end


feature -- External Variables


	c_gsl_rng_default: POINTER
			-- Defined as GSL_VAR const gsl_rng_type *gsl_rng_default
		external
			"c inline use <eif_gsl.h>"
		alias
			"gsl_rng_default"
		end


end
