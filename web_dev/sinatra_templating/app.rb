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

get '/students/update_info' do
  erb :update_info
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/students' do
  db.execute("CREATE TABLE IF NOT EXISTS additional_campuses(
    campus VARCHAR(255)
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id)
    )")

  redirect '/'
end

post '/students' do
  db.execute("INSERT INTO additional_campuses(campus, student_id) VALUES (?,?)", [params['campus'], params['student_id'])
  db.execute("INSERT INTO additional_campuses_students")

  redirect '/'
end

# add static resources