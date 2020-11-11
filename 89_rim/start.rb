require_relative "read_numbers.rb"

roman_numbers = read_numbers

count_before = 0

count_after = 0


roman_numbers.each{|number| count_before += number.length }

roman_numbers.map!{ |number|

	number.gsub('DCCCC','CM') 
}
roman_numbers.map!{ |number|

	number.gsub('LXXXX','XC')
}
roman_numbers.map!{ |number|

	number.gsub('VIIII','IX') 
}
roman_numbers.map!{ |number|

	number.gsub('CCCC','CD')
}
roman_numbers.map!{ |number|

	number.gsub('XXXX','XL')
}
roman_numbers.map!{ |number|

	number.gsub('IIII','IV')
}

roman_numbers.each{|number| count_after += number.length }

p roman_numbers

puts "count saved number of characters : #{count_before - count_after } "


# roman_numbers.map!{ |number|
 
# 	number.gsub('DCCCC','CM') 
# 	number.gsub('LXXXX','XC')
# 	number.gsub('VIIII','IX') 
# 	number.gsub('CCCC','CD')
# 	number.gsub('XXXX','XL')
# 	number.gsub('IIII','IV')	
# }

