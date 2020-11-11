x = 0

y = 0

n = 20

def foo(x, y, n)
	
	count = 0

	if x < n

		count += foo(x+1, y, n)

	end
	
	if y < n

		count += foo(x, y+1, n)

	end

	return 1 if x == n && y == n 


	count
	
end

p foo(x, y, n)