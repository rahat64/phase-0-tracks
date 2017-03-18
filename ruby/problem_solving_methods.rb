def search_array(arr, int)
	if arr.include? (int)
    	hash = Hash[arr.map.with_index.to_a]
    	hash[int]
  	end
end

number = [1, 2, 3, 4, 5]

p search_array(number, 3)
p search_array(number, 7)
p search_array(number, 5)

def fib(n)
	n.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
end

p fib(6)

p fib(100)