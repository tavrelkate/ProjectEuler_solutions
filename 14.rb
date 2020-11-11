require 'benchmark'

def count(n)
  c = 0
  while n != 1
    n = n.even? ?  n / 2 : (3 * n) + 1
    c += 1
    return c + @hash[n] if @hash[n]
  end
  c
end

@hash = {}

puts Benchmark.measure{
  (2..1_000_000).each{|n| @hash[n] = count(n)}
}

p @hash.max_by{|key, value| value}