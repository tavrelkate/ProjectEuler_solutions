count = 0

(2..1_000).each { |number|

	b = (1..number).select { |divisor|

		 number % divisor == 0

		}.sum

	a = (1..b).select { |divisor|

		 b % divisor == 0

		}.sum

	count += 1 if a != b

}

p count

