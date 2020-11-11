require 'Prime'
# number = 2

# sum = 1

# length = 1

# puts("sum   len   number")

# while(length != 500)

# 	length = (1..sum).select { |n| sum % n == 0}.length

# 	puts(sum.to_s + "  " + length.to_s + "  " + number.to_s)

# 	sum += number

# 	number = number + 1

# end	

# p sum


p Prime.prime_division(76_576_500)

array =  Prime.prime_division(76_576_500) 

for  element in array

	p element[0]**element[1]
end