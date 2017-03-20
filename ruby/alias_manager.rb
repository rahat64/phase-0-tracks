def alias_converter (string1, string2)
  secret = string2 + " " + string1
end

 #First I would make a method to take two strings and combine them
 #So their order gets switched.

def next_vowel(str)
  vowels = ["a", "e", "i", "o", "u"]
  str = str.split('')
  str_new = str.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    else
      char.next
    end
  end
  str_new.join
end

#Above is a method that is intended to simultaneously switch the 
#string's index depending on whether it's included in the vowels or not
#to either switch to the next vowel for which I used .rotate method,
#or if the char is not a vowel then just simply use the .next method.
#However, I got a little stuck trying to exclude space from the .next
#method

alias_storage = {
}

#empty hash for when I plan to store alias and real names after
#I retrieve them via user input

begin
  puts "Enter first name."
  first = gets.chomp

  puts "Enter last name."
  second = gets.chomp 

  real_name = first + " " + second
  puts "Real name is #{real_name}."

  alias1 = alias_converter(first, second)
  
  alias2 = next_vowel(alias1)
  
  p alias2
  
  alias_storage[alias2] = real_name 

  #make the alias a key value and store the real name as it's value
  
  puts "Press any key to continue adding names, otherwise type done"
  resp = gets.chomp
  
end until resp == "done"

alias_storage.each do |alias2, real_name|
  puts "#{alias2} is actually #{real_name} in disguise."
end