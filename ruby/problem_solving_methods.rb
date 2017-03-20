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

# Insertion Sort
# I decided to research Insertion sorts for this particualr release
# and what helps me grasp the concept most is getting an example 
# structure first so I can study it's setup. After that I like to
# ponder upon what I think the output will be and verifying whether 
# or not my hypothesis came true. An in-depth explanation also helps
# on the matter if I feel that I'm lacking in my understanding. As I
# tackle this particular algorithm, I find that my initial ignorance
# towards this topic made me feel overwhelmed for sure because of the 
# multiple sorting algorithms available to research. Studying this
# particular algorithm however has made me more confident becuase I'm
# able to understand it's structure and how I would go about implementing
# it with my own codes.

#Implementation

# Through my research, I have come to the conclusion that 
# insertion sort organizes numbers inside an array from least,
# to greatest.

# I would start by creating an array with random numbers and make
# sure they are not organized from least to greatest because that's
# what I plan on achieving through the insertion methods.

def insertion_sort(a)
	for i in 1...(a.length)
    	j=i
    	while j>0
      		if a[j-1]>a[j]
        		temp=a[j]
        		a[j]=a[j-1]
        		a[j-1]=temp
      		else
      		break
      		end
      		j=j-1
    	end
  	end
	return a
end

arr = [22, 3, 5, 8, 7, 10]

p insertion_sort(arr)