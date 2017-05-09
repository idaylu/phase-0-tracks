puts "What is the hamster's name?"
  hamster_name=gets.chomp!
puts "Please indicate hamster's volume level from 1 to 10."
  hamster_volume=gets.chomp!.to_i
puts "What is the hamster's fur color?"
  hamster_furcolor=gets.chomp!
puts "Is this hamster a good candidate for adoption?"
  hamster_adopt=gets.chomp!
puts "What is the hamster's estimated age?"
  hamster_age=gets.chomp!
if hamster_age==""
  then hamster_age=nil
end
puts "Please verify this data. The hamster's name is #{hamster_name}. He has a volume level of #{hamster_volume}. #{hamster_name} has #{hamster_furcolor} fur. #{hamster_adopt}, he is a good candidate for adoption."
if age == nil
  puts "#{name} is unknown years old"
else
  puts "#{name} is #{age} years old."
end