# Purpose is to keep a record of all students for a single class
# Unfortunately it's not entirely ambitious as to do the same
# thing for the entire school but just the basic framework
# for a singular classroom which can be applied to all classrooms


# require gems
require 'sqlite3'
require 'faker'

# create database
records = SQLite3::Database.new("students.db")
records.results_as_hash = true

# string delimiters
create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS students(
		id INTEGER PRIMARY KEY,
		identity VARCHAR(255)
	)
SQL

records.execute(create_table_cmd)

# add new students into the table as well as update their names
# or even remove them

def new_student(records, identity)
	records.execute("INSERT INTO students (identity) VALUES (?)", 
	[identity])
end

def change_name(records, identity)
	records.execute("UPDATE students SET identity=? WHERE identity=?",
	[identity])
end

def remove_student(records, identity)
	records.execute("DELETE FROM students WHERE identity=?", 
	[identity])
end

#just insert random data for now
=begin
5.times do
	new_student(records, Faker::Name.name)
end
=end

records.delete_if {|key, value| key >= 'Ms. Michel Hayes'}

command = records.execute("SELECT * FROM students")
puts command.class 
p command

# User interactivity

