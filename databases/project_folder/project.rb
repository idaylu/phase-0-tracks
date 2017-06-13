=begin
Program for logging workouts
=end

#require gems
require 'sqlite3'
require 'faker'

#create SQLITE3 database
db= SQLite3::Database.new("workout_log.db")

#string delimiter
create_table_log=<<-SQL
  CREATE TABLE IF NOT EXISTS workout_log(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  workout_type VARCHAR(255),
  workout_duration INT,
  is_cardio BOOLEAN,
  calories_burned INT
  )
SQL

#creates the workout table if does not exist
db.execute(create_table_log)

