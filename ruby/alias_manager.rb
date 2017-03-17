def alias_converter (string1, string2)
  secret = string2 + " " + string1
end

def next_vowel (string)
  string = ""
  vowels = ["a", "e", "i", "o", "u"]
  index = 0 
  while index < string.length
    if string.include?(vowels)
      vowels.rotate!
    else
      string[index].next!
    end
    index += 1
  end
end

puts "Enter first name."
first = gets.chomp 

puts "Enter last name."
second = gets.chomp 

sec_identity = alias_converter(first, second)

next_vowel(sec_identity)

p sec_identity
