note
	description: "Summary description for {MANAGED_POINTER_HELPER}."
	date: "$Date$"
	revision: "$Revision$"

class
	MANAGED_POINTER_HELPER

feature -- Access

	to_array_of_real_64 (mp: MANAGED_POINTER; count: INTEGER): ARRAY [REAL_64]
			-- Create an ARRAY[REAL_64] from a MANAGED_POINTER with
			-- `count` elements.
		local
			i: INTEGER
		do
			create Result.make_filled (0.0, 1, count)
			from
				i := 0
			until
				i = count
			loop
				Result.put (mp.read_real_64 ({PLATFORM}.real_64_bytes * i), i + 1)
				i := i + 1
			end
		ensure
			array_set: across Result as ic all mp.read_real_64 ((ic.cursor_index - 1) * {PLATFORM}.real_64_bytes ) = ic.item end
			instance_free: class
		end

	from_array_of_real_64 (arr: ARRAY [REAL_64]): MANAGED_POINTER
			-- Create a MANAGED_POINTER from an ARRAY [REAL_64].
		do
			create Result.make (arr.count * {PLATFORM}.real_64_bytes)
			across arr as ic
			loop
				Result.put_real_64 (ic.item, (ic.cursor_index - 1)*{PLATFORM}.real_64_bytes)
			end
		ensure
			managed_pointer_set: across arr as ic all Result.read_real_64 ((ic.cursor_index - 1) * {PLATFORM}.real_64_bytes ) = ic.item end
			instance_free: class
		end

end
