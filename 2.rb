i = 1
j = 2
z = 0
sum = 0

while j < 4000000
  	if (j % 2 == 0)
   	  sum = sum + j
 	end
 	 z = i + j
 	 i = j
 	 j = z
 end

print(sum)


def foo(i)
	if (1)
		return 