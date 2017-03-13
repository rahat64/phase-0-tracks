limit = 0 

puts "How many employees do you want registered?"
begin
  emp_reg = gets.chomp
  emp_reg = Integer(emp_reg)
rescue
  puts "Enter a numerical value please"
retry
end

while limit < emp_reg

  current_year = 2017
  current_age = false
  likes_garlic = false
  health_ins = false

  puts "What is your name?"
  name = gets.chomp 

  puts "How old are you?"
  begin
    age = gets.chomp
    age = Integer(age)
  rescue
    puts "Please enter numerical values"
  retry
  end
  puts "You are #{age} year/s old"

  puts "What year were you born"
  begin
    year = gets.chomp
    year = Integer(year)
  rescue 
    puts "Please enter numerical values"
  retry
  end 
  puts "You were born in #{year}."

  if current_year - year == age 
    current_age = true
  end

  puts "Our company serves garlic bread, would you like us to order some for you? (y/n)"
  ans = gets.chomp

  until ans == "y" || ans == "Y" || ans == "n" || ans == "N" 
    puts "y or n? y for yes and n for no."
    ans = gets.chomp
  end

  if ans == "y" || ans == "Y"
    likes_garlic = true 
  end

  puts "Would you like to enroll in the company's health insurance?"
  ans2 = gets.chomp

  until ans2 == "y" || ans2 == "Y" || ans2 == "n" || ans2 == "N"
    puts "y or n? y for yes and n for no."
    ans2 = gets.chomp
  end

  if ans2 == "y" || ans2 == "Y"
    health_ins = true 
  end 

  puts "What sort of allergies do you have? List each one at a time and when finished, type done."
  puts "And if you have none, then just type done without listing anything."
  allergen = gets.chomp 

  until allergen == "sunshine" || allergen == "done"
    allergen = gets.chomp
  end

  puts "Processing result..............."
  if allergen == "sunshine"
    puts "Result: Probably a vampire"
  elsif name == "Drake Cula" || name == "Tu Fang"
    puts "Result: Definetly a vampire"
  else
    case
      when current_age == true && likes_garlic == true || health_ins == true 
        puts "Result: Probably not a vampire."
      when ((current_age == false || likes_garlic == false) || health_ins == false)
        puts "Result: Probably a vampire."
      when current_age == false && likes_garlic == false && health_ins == false
        puts "Result: Almost certainly a vampire"
      else
        puts "Result: Inconclusive."
    end
  end
  limit += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."