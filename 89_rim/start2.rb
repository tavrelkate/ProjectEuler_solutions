# вариант сокращенный , но не рабочий


require_relative "read_numbers.rb" 

roman_numbers = read_numbers

count_before = 0

count_after = 0

roman_numbers.each{|number|

	count_before += number.length
}

hash = {'DCCCC' => 'CM',
		'LXXXX'=> 'XC',
		'VIIII' => 'IX',
		'CCCC' => 'CD',
		'XXXX' => 'XL',
		'IIII' => 'IV'
	}


roman_numbers.map!{ |number|

	hash.each_pair{ |key, value|

		number.gsub!(key, value)
	}
}

roman_numbers.each{|number|

	count_after += number.length
}

p roman_numbers

