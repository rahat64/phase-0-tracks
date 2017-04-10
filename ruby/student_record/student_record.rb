# Purpose is to keep a record of all students for a single class
# Unfortunately it's not entirely ambitious as to do the same
# thing for the entire school but just the basic framework
# for a singular classroom which can be applied to all classrooms


# require gems
require 'sqlite3'
require 'faker'

# create database
records = SQLite3::Database.new("students.db")

# string delimiters
create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS students(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255)
	)
SQL

records.execute(create_table_cmd)