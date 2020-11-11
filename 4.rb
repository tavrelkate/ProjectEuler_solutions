class String
  def palindrome?
    letters = self.downcase
    letters == letters.reverse
  end
end
max = 1
 999.downto(99) do |i| 
 	999.downto(99) do|j| 
 		z = i*j
 		if(z.to_s.palindrome?)&&(z>max)
 			max = z
 		end
 	end
 end
 puts(max)