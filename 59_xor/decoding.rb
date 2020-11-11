require_relative'read_ASCII.rb'


def passwords
	
	alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

	array = []

	alphabet.each{ |x| 

		alphabet.each{ |y|

			alphabet.each { |z|

				password = [x.ord, y.ord, z.ord]

				array << password
			}
		}
	}

	array
end


def include_english_symbols?(chr)

    return ('a'<= chr && chr <='z') || ('A'<= chr && chr <='Z') || ('0'<= chr && chr <='9') || (chr == ' ') || (chr == '\'') || (chr == ',') || (chr == '.')|| (chr == ':') || (chr == '"')  || (chr == ';') || (chr == '[') || (chr == ']') || (chr=='+')|| (chr=='-')|| (chr=='=')|| (chr == '/')  || (chr == '(') || chr == ')' 

end


def decoding_text(password)

	text = ''

	(0...ascii.length).each { |index_ASCII|

		chr = (ascii[index_ASCII] ^ password[index_ASCII % password.length]).chr

		text += chr

		unless include_english_symbols?(chr)

			text = nil

			break 

		end
	}

	text

end
