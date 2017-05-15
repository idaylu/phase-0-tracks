# VAmpire Testing Survey for Employees
puts "How many employees need to be processed?"
  employee_number = gets.chomp!.to_i
until employee_number == 0

#This is an employee survey to screen for vampires
puts "What is your name?"
  name=gets.chomp!
puts "How old are you?"
  age=gets.chomp!.to_i
puts "What year were you born?"
  birthyear=gets.chomp!.to_i
puts "Our company cafeteria serves some amazing garlic bread. Should we order some for you?"
  garlicbread=gets.chomp!
puts "Would you like to enroll in company's health insurance?"
  insurance=gets.chomp!
puts "What allergies do you have?"
  allergies=gets.chomp!

  if age == 2017-birthyear
      true_age = true
  else
      true_age= false
  end

  if garlicbread == "yes"
    eatsgarlic = true
  else
    eatsgarlic = false
  end

  if name == "Drake Cula" or "Tu Fang"
    name_check= true
  else
    name_check= false
  end

  if insurance == "yes"
    health = true
  else
    health = false
  end

puts "Please list all allergies. Type done when completed."
  allergies= gets.chomp!
  until allergies == "done"
    if allergies == "sunshine"
      allergies = true
    else allergies == "done"
      allergies= false
    end
  end

  if name_check
    puts " Definitely a vampire."
  elsif allergies
      puts "Probably a vampire."
  elsif true_age && (eatsgarlic || health)
      puts "Probably not a vampire."
  elsif !true_age && (!garlicbread || !insurance)
      puts "Probably a vampire."
  elsif !true_age && !garlicbread && !insurance
      puts "Almost certainly a vampire."
  else
      puts "Results inconclusive."
  end

employee_number -= 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."