def read_numbers

	lines = []

	File.open("roman.txt") { |file| 

		lines = file.readlines
	 }

	 lines.map!{ |line|

	 	line.chomp
	 }
		
	lines
 end



