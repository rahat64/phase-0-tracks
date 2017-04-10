


# require gems
require 'sqlite3'
require 'faker'

# create database
records = SQLite3::Database.new("students.db")