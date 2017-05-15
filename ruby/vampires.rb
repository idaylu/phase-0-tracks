def employee_info
  counter= employee_number
  until counter = 0
    when age_verify && garlicbread && insurance = false
      puts "Almost certainly a vampire."
    when age_verify && (garlicbread || insurance) = true
      puts "Probably not a vampire."
    when age_verify && (garlicbread || insurance) = false
      puts "Probably a vampire."
    else
      puts "Results inconclusive."
      counter -= 1
  end
end

def age_verify
    if 2017-birthyear != age
      return true
    else false
  end
end


#This is an employee survey to screen for vampires
puts "How many employees need to be processed?"
  employee_number=gets.chomp!.to_i
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


if name == "Drake Cula" or "Tu Fang"
    puts "Definitely a vampire."
elsif allergies== "sunshine"
    puts "Probably a vampire."
else
  puts employee_info
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

