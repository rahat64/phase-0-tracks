# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# use string.split function to split(" ") string into an array
# ["apples","carrots","cereal"] [1,1,1] => {apples=>1,carrots=>1,cereal=>1 }
# str="carrots apples cereal pizza"
# words=str.split(" ") => ["carrots","apples","cereal","pizza"]
# vals= Array.new(words.size){1} => [1,1,1,1]
# arr=words.zip(ones) =>[["carrots",1],["apples",1],["cereal",1],["pizza",1]]
# return arr.to_h
# 
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: define the method, add the item name to the list with the optional quantity
# output: nil

# Method to remove an item from the list
# input:list, item name
# steps: we will use the delete method to delete the item from the list 
# output: nil

# Method to update the quantity of an item
# input: list, item name, and quantity
# steps:define the method, and then update the list with the new quanitty
# output: nil

# Method to print a list and make it look pretty
# input:list
# steps:define the method and then use a code block to iterate through the list
# output: nil
=begin
str="carrots apples cereal pizza"
words=str.split(" ") => ["carrots","apples","cereal","pizza"]
vals= Array.new(words.size){1} => [1,1,1,1]
arr=words.zip(ones) =>[["carrots",1],["apples",1],["cereal",1],["pizza",1]]
return arr.to_h
=end
def create_list(str)
  keys = str.split(" ")
  values = Array.new(keys.size) {1}
  list = keys.zip(values).to_h
  print_list  list
  list
end

def add_item(list, item, quantity=1)
  list[item] ||= quantity
end

def remove_item(list, item)
  list.delete(item)
end

def update_item(list, item, quantity)
  if list.include? item then list[item] = quantity end
end

def print_list(list)
  list.each do |key, value| 
    puts "#{key.capitalize}, qty: #{value}"
  end
  puts "--------------------"
end

#DRIVER CODE
list=create_list("lemonade tomatoes onions icecream")
remove_item(list,"lemonade")
print_list(list)
update_item(list,"tomatoes",3)
update_item(list,"icecream",4)
print_list(list)
