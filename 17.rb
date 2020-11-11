number10 = {
	0 => 0,
	1 => 3,
	2 => 3,
	3 => 5,
	4 => 4,
	5 => 4,
	6 => 3,
	7 => 5,
	8 => 5,
	9 => 4,
	10 => 3
}
number19 = {
	10 => 3,
	11 => 6,
	12 => 6,
	13 => 8,
	14 => 8,
	15 => 7,
	16 => 7,
	17 => 9,
	18 => 8,
	19 => 8,	
}
number99 = { 
	0 => 0,
	2 => 6,
	3 => 6,
	4 => 5,
	5 => 5,
	6 => 5,
	7 => 7,
	8 => 6,
	9 => 6,
}
number999 = {
	1 => 10,
	2 => 10,
	3 => 12,
	4 => 11,
	5 => 11,
	6 => 10,
	7 => 12,
	8 => 12,
	9 => 11,
	10 =>11,
}

sum = 0

count_hundred_and = 0

count_hundred = 0

count_below_100 = 0

count_below_100_tentimes = 0

(1..99).each do |i|

	if(i<11)

		count_below_100 += number10[i]

	else

		if(i<20)

			count_below_100 += number19[i]

		else #95

			x = i/10     #9

			y = i - x*10 #5    

			count_below_100 += number99[x]

			count_below_100 += number10[y]	

		end

	end
	
end

count_below_100_tentimes = count_below_100 * 10

(1..9).each do |i|

	count_hundred_and += (number10[i] + 10) * 99

end

(1..10).each do |i|

	count_hundred += number999[i]

end

sum = count_below_100_tentimes + count_hundred + count_hundred_and

p sum