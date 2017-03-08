puts "You hamster! What is your name?"
h_name = gets.chomp 

puts "How squeaky are you (1 to 10), 10 being loudest?"

begin
  volume_level = gets.chomp 
  vol_lev = Integer(volume_level)
rescue 
  puts "please enter a number b/w 1 and 10, 10 being loudest"
retry
end

while vol_lev >= 11 || vol_lev <= 0
	puts "try b/w (1 to 10)"
	volume_level = gets.chomp 
	vol_lev = Integer(volume_level)
end

puts " "

puts "What is your fur color?"
fur_color = gets.chomp  

adoption = false
puts "Are you in consideration for being adopted? (y/n)"
adopt = gets.chomp 

until adopt == "y" || adopt == "n" || adopt == "Y" || adopt == "N"
  puts "y for yes or n for no"
  adopt = gets.chomp
end

if adopt == "y" || adopt == "Y"
  adoption = true
end

puts " "

puts "What is your estimated age?"

begin
	age = gets.chomp
		if age.empty?
    		age = nil
  		else
    		age = Integer(age)
  		end
rescue
	puts "I require a number!"
retry
end

puts " "

puts "Hamster Summary-"
puts " "
puts "Name: #{h_name}"
puts "Squeak level: #{vol_lev}"
puts "fur color: #{fur_color}"
puts "Wants an adoptor?: #{adoption}"
puts "Estimated age: #{age}"
