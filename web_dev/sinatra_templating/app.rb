# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/info' do
  erb :info
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/students' do
  db.execute("CREATE TABLE IF NOT EXISTS additional_campuses(
    id INTEGER PRIMARY KEY,
    campus VARCHAR(255),
    )")

  db.execute("CREATE TABLE IF NOT EXISTS additional_campuses_students(
    student_id INT,
    campus_id INT
    )")
  redirect '/'
end

# add static resources