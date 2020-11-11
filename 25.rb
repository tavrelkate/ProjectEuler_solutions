# len  = 0

# n = 1

# def foo(n)

# 	if n == 1 or n == 2 

# 		return 1

# 	else 

# 		return foo(n - 1) + foo(n - 2)

# 	end
# end

# while (len < 1000)

# 	p len = foo(n).to_s.length

# 	n += 1

# end


a = 1

b = 0

n = 1

while a.to_s.length != 1000

    a += b
    
    b =  a

    n += 1

end

print " n = #{n}" 
