# Before anything, I'll start by creating a method that converts all
# user inputs into string.
# Then I'll start by asking all the questions
# After each question, I'll get all the user inputs and store them
# in the local variables.
# After all user inputs have been stored, then I'll create a hash
# I'll create key values within the hash and align previous 
# user inputs with the key values

def int_converter(string)
	begin
    	string = gets.chomp 
    	string = Integer(string)
  	rescue
    	puts "Please enter a numerical value."
    retry
	end
end

employment = false

puts "What is your name?"
name = gets.chomp 

puts "How old are you?"
age = int_converter(age)

puts "How many children do you have?"
kids = int_converter(kids)

puts "What sort of decor theme would you like?"
decor_theme = gets.chomp 

puts "Are you currently employed? (y/n)"
resp = gets.chomp

until resp == "y" || resp == "n"
	puts "y for yes or n for no?"
  	resp = gets.chomp
end

if resp == "y"
	employment = true
end

customer_info = {
  	name: name,
  	age: age,
  	kids: kids,
  	decor_theme: decor_theme,
  	employment: employment
}

puts "Recieving information:"
p customer_info

puts "Would you like to change any of the fields in:"
puts "  -name"
puts "  -age"
puts "  -kids"
puts "  -decor_theme"
puts "  -employment"
puts "If not, then just type none."
resp2 = gets.chomp 

until resp2 == "name" || resp2 == "age" || resp2 == "kids" || resp2 == "decor_theme" || resp2 == "employment" || resp2 == "none"
	puts "Please choose from the following:"
  	puts "  -name"
  	puts "  -age"
  	puts "  -kids"
  	puts "  -decor_theme"
  	puts "  -employment"
  	puts "If no change is necessary, then just type none."
  	resp2 = gets.chomp
end

if resp2 == "name"
  	puts "Enter a new name"
  	name = gets.chomp 
  	customer_info[:name] = name
elsif resp2 == "age"
  	puts "Enter a new age"
  	age = int_converter(age)
  	customer_info[:age] = age
elsif resp2 == "kids"
  	puts "Update kids"
  	kids = int_converter(kids)
  	customer_info[:kids] = kids
elsif resp2 == "decor_theme"
  	puts "Enter a new decor theme"
  	decor_theme = gets.chomp 
  	customer_info[:decor_theme] = decor_theme
elsif resp2 == "employment"
  	puts "Are you currently employed? (y/n)"
  	resp = gets.chomp

  	until resp == "y" || resp == "n"
    	puts "y for yes or n for no?"
    	resp = gets.chomp
  	end

  	if resp == "y"
    	employment = true
  	end
  
  	customer_info[:employment] = employment
else
  	puts "Confirming no change."
end

puts "Updating info......"
puts customer_info