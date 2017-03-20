def alias_converter (string1, string2)
  secret = string2 + " " + string1
end

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

alias_storage = {
}

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
  
  puts "Press any key to continue adding names, otherwise type done"
  resp = gets.chomp
  
end until resp == "done"

alias_storage.each do |alias2, real_name|
  puts "#{alias2} is actually #{real_name} in disguise."
end