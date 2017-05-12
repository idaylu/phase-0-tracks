#This is an employee survey to screen for vampires
puts "What is your name?"
  name=gets.chomp!
puts "How old are you?"
  age=gets.chomp!.to_i
puts "What year were you born?"
  birthyear=gets.chomp!.to_i
puts "Our company cafeteria serves some amazing garlic bread. Should we order some for you?"
  garlicbread=gets.chomp!
puts "Would you like to enroll in the company's health insurance?"
  insurance=gets.chomp!

# if birthyear and age do not match then result false
# if no to bread and insurance then result false


#checks to see if age is equal to years from birth year
def age_verify
    if 2017-birthyear != age
      return false
    else true
  end
end

#returns true if birth year and age match
if age_verify = true
  return true
else false
end

#returns true if they accept garlic bread
if garlicbread== "yes"
  return true
else
  return false
end

if age_verify && (garlicbread || insurance) = true
  puts "Probably not a vampire."
end

if age_verify && (garlicbread || insurance) = false
  puts "Probably a vampire."
end

if age_verify && garlicbread && insurance = false
  puts "Almost certainly a vampire."
end

def check_name
  if name== "Drake Cula" or "Tu Fang"
    puts "Definitely a vampire."
  end
end

if age_verify && garlicbread && insurance =true
  then check_name
end

######

when age_verify && garlicbread && insurance = false
  puts "Almost certainly a vampire."
when age_verify && (garlicbread || insurance) = true
  puts "Probably not a vampire."
when age_verify && (garlicbread || insurance) = false
  puts "Probably a vampire."
else
  puts "Results inconclusive."





