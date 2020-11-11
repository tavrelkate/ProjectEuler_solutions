def foo(n)

	if n == 2

		return 2 

	end

	if n == 1

		return 1

	else

		return n * foo(n - 1) 	

	end
end

sum_array = foo(100).to_s.split('').map!{ |el| el.to_i }

p "Cумма : #{sum_array.sum} "
