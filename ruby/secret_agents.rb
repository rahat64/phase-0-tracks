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

#puts encrypt ("abc")
#puts encrypt ("zed")
#puts decrypt ("bcd")
#puts decrypt ("afe")

#puts decrypt(encrypt("swordfish"))
# This method works because we technically call both
# methods simultaneously where we first call the encrypt
# method which succeds in encripting the string but 
# immediately afterwards, the decrypt method is called
# so the process of encrypt is immediately nullified
# by the calling of decrypt method

puts "Would you like to decrypt, or encrypt as password?"
resp = gets.chomp 

until resp == "decrypt" || resp == "encrypt" 
	puts "encrypt or decrypt?"
	resp = gets.chomp 
end 

if resp == "encrypt"
	puts "Enter password you want encypted"
	pass = gets.chomp 
	puts encrypt(pass)
else
	puts "Enter password you want decrypted"
	pass = gets.chomp 
	puts decrypt(pass)
end

