require 'prime'

sum = 0

Prime.each(2000000) do |i|
  sum = sum + i	
end

puts(sum)