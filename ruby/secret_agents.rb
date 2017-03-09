def encrypt (string )
	alphabet = ("a".."z").to_a
	result = "" 
	idx = 0 
	while idx < string.length
		letter = string[idx] 
		if letter == " "
			result += " "
		else
			j_idx = alphabet.index(letter)
			k_idx = (j_idx + 1) % alphabet.length 
			result += alphabet[k_idx]
		end
		idx += 1
	end
	result 
end

def decrypt (string )
	alphabet = ("a".."z").to_a
	result = "" 
	idx = 0 
	while idx < string.length
		letter = string[idx] 
		if letter == " "
			result += " "
		else
			j_idx = alphabet.index(letter)
			k_idx = (j_idx - 1) % alphabet.length 
			result += alphabet[k_idx]
		end
		idx += 1
	end
	result 
end

puts encrypt ("abc")
puts encrypt ("zed")
puts decrypt ("bcd")
puts decrypt ("afe")

