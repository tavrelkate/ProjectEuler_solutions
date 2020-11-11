def numbers

	lines = []

	array = []

	File.open("keylog.txt") { |file| 

		lines = file.readlines
	}

	lines.each{ |number|

	 	array << number.chomp.split('')

	}

	array.map!{|number|

		number.map!{|numeral|

			numeral = numeral.to_i

		}
	}
end
