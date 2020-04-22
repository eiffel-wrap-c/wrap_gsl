note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	GSL_TEST_SET

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
		end

	on_clean
			-- <Precursor>
		do
		end

feature -- Test routines

	test_version
			-- New test routine
		local
			gsl_version: GSL_VERSION
		do
			create gsl_version
			assert ("Expected /= Unkown", not gsl_version.gsl_version.is_case_insensitive_equal ("Unkown"))
		end

end


