sum1 = 0
sum2 = 0

(1..100).each do |el|
 sum1 = sum1 + el ** 2 
 sum2 = sum2 + el
 end

puts((sum1 - sum2**2).abs)