b = 1
c = 1
count = 0
(1..500).each do |b|
	(1..1000).each do |c|
		if((1000 - c - b)**2 + b**2 == c**2)&&(1000 - c - b > 0)
			print("b =",b,"c = ",c,"; ","a =", 1000 - b - c,"\n")
			puts(c * b * (1000 - b - c))
			count = 1			
			break
		end
	end
	if(count ==1)
	 	break
	end
end
