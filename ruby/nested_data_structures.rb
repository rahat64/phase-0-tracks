classroom = {
	room: {
		total_seats: 19,
		total_students: 9,
		total_seats_open: 9,
		teacher_presence: true
	},
	
	row_1: {
		category: "Delinquints",
		desks: {
			total_seats: 6,
			open_seats: 3
		},
		students: [
			"Alex",
			"Steve",
			"Rebecca" 
		]
	},

	row_2: {
		category: "Average",
		desks: {
			total_seats: 6,
			open_seats: 2
		},
		students: [
			"Bob",
			"Tom",
			"Racheal",
			"Mike" 
		]
	},

	row_3: {
		category: "Smarts",
		desks: {
			total_seats: 6,
			open_seats: 4
		},
		students: [
			"Bellamy",
			"Stroenheim"
		]
	}
}

puts "How many many total seats are in the room?"
p classroom[:room][:total_seats]

puts "Is the teacher present?"
if classroom[:room][:teacher_presence]
	puts "yes"
else
  	puts "no"
end

puts "How many students are seated in row 3?"
p classroom[:row_3][:desks][:total_seats] - classroom[:row_3][:desks][:open_seats]

puts "Need more smart kids, add Jessica to the classroom"
classroom[:row_3][:students].push("Jessica")

puts "Update any more necessary information with the addition of Jessica and print out a summary:"

new_desks = {
  total_seats: 6,
  open_seats: 3
}

classroom[:row_3][:desks].merge!(new_desks)

new_room = {
  total_seats: 19,
	total_students: 10,
	total_seats_open: 9,
	teacher_presence: false
}

classroom[:room].merge!(new_room)

p classroom

puts "Is the teacher still there?"
if classroom[:room][:teacher_presence]
	puts "yes"
else
  	puts "no"
end