module Enumerable

    def my_map!(&block)

        return to_enum(__method__) unless block_given?

        self.each.with_index { |value, index|

            self[index] = block.call(value)
        }
    end

    def my_map(&block)
        
        return to_enum(__method__) unless block_given?

        result = []

        self.each { |element|

            result << block.call(element) 
        }

        result
    end
end

p (1..5).my_map{|a| a*2}

p (1..5).map{|a| a*2}

# p [1, 2, nil, 5, '', 10].my_map{|a| a*2}
# p [1, 2, nil, 5, '', 10].map{|a| a*2}

p [1, 2, nil, 5, '', 10].my_map!(&:nil?)
p [1, 2, nil, 5, '', 10].map!(&:nil?)

p [1, 2, nil, 5, '', 10].map!
p [1, 2, nil, 5, '', 10].my_map!

p [1, 2, nil, 5, '', 10].map
p [1, 2, nil, 5, '', 10].my_map

# p [1, 2, nil, 5, '', 10].map(5)
# p [1, 2, nil, 5, '', 10].my_map(5)

