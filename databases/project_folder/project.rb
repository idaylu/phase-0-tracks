=begin
Program for logging workouts
=end

#require gems
require 'sqlite3'
require 'faker'

#create SQLITE3 database
db= SQLite3::Database.new("workout_log.db")
db.results_as_hash = true

#string delimiter
create_table_log = <<-SQL
  CREATE TABLE IF NOT EXISTS workout_log(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  workout_duration INT,
  calories_burned INT,
  workout_type VARCHAR(255),
  )
SQL

#creates the workout table if does not exist
#db.execute(create_table_log)

#create method to input data
def log_workout(db, name, duration, calories, type)
  db.execute("INSERT INTO workout_log (name, workout_duration, calories_burned, workout_type) VALUES (?,?,?,?)",[name, duration, calories, type])
end

10.times do
  log_workout(db, Faker::Name.name, Faker::Number.number(2),Faker::Number.number(2),Faker::Name.name)
end


