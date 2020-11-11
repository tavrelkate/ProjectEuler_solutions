require_relative'read_keylog.rb'


hash = Hash.new([])

new_hash = {}

password = ''

numbers.each{|number| #567

	hash[number[0]] += [number[1], number[2]] #5

	hash[number[1]] += [number[2]] #6

	hash[number[2]] += [] #7
}


hash.each{|key, value| # 3 => 5, 5, 5, 8

	value.uniq! # 3 => 5, 8

	new_hash[value.count] = key #2 => 3
}


new_hash = new_hash.sort.reverse 


new_hash.each { |key, value|  

	password += value.to_s
}

puts "password : #{password}"



	