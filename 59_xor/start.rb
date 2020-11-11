require_relative'decoding.rb'

text = nil

def count_ASCII_in_text(text)

	count = 0

	for literal in text.split('')

		count += literal.ord

	end

	print count
end


passwords.each{ |password|

	text ||= decoding_text(password)

}

count_ASCII_in_text(text)







