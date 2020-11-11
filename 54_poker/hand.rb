class Hand

	include Comparable 

	attr_reader :hand, :cards, :colors, :numbers

	TJQKA = { "T" => 10,

		"J" => 11,

		"Q" => 12,

		"K" => 13,

		"A" => 14
	}


	def initialize(hand = [])

		@hand = hand  	#hand

		@cards = hand.map{ |card| #cards

			card.split('')

		}	

		@colors = @cards.map{ |card| #all colors in hand

			card.last
		}	

		@numbers = @cards.map { |card|  #all numbers in hand

			TJQKA[card.first].nil? ? card.first.to_i : TJQKA[card.first]
		}
	end	


	def power

		if colors_uniq?

			if self.numbers_sort?

				if @numbers.sort.last.to_i == 14 

					return 10 # p "flush_royal"

				else

					return 9  # p "flush_stralght"

				end

			else

				return 6 # p "flush"

			end

		else

			case self.numbers_uniq.sort		

			when [1, 4]

				return 8	# p "kape"

			when [2, 3]

				return 7    # p "full_house"	

			when [1, 1, 3]

				return 4    # p "set"

			when [1, 1, 1, 2]

				return 2    # p "pair"

			when [1, 2, 2]

				return 3    # p "two_pair"

			else

				if self.numbers_sort? 

					return 5 # p "stralght"

				else
		
					return 1 # p "hight card"

				end

			end	

		end	
	end


	def info

		array = @numbers.sort

		array_uniq = array.uniq

		count_uniq = []

		kiker = 0

		straight = 0

		for uniq in array_uniq

			count_uniq << array.find_all{|i| i == uniq}.count
		end

		for uniq in array_uniq

			count = array.find_all{|i| i == uniq}.count

			if count == 1

				kiker = uniq if uniq > kiker

			elsif count == count_uniq.max

				straight = uniq if uniq > straight
			end
		end	
	

		hash = { kiker: kiker,

			hight_of_equal: straight
		}
	end


	private

		def numbers_uniq

			array = []

			for el in @numbers.uniq

				array << @numbers.find_all { |i| i == el}.count
			end

			array
		end

		def numbers_sort?

			@numbers.sort.last - @numbers.sort.first == 4 ? true : false
		end

		def colors_uniq?

			@colors.uniq.count == 1 ? true : false	
		end

		def <=> (other) 

       		self.power <=> other.power

   		end 

end
