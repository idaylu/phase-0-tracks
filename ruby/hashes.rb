=begin
Pseudocode for Release 2
Take client details (name, age,number of children, decor theme, etc.)
Creates empty hash for client details.
Asks clients for information.
Enter information into the hash.
Convert information into proper type.
Print hash with information.
Allows user to update keys(once).
Store any updates.
None to end update.
Turns keys into symbols for readability.
Print updated info
=end

info={
name:"client_name",
age:"client_age",
children:"client_children",
decor:"client_decor",
budget:"client_budget",
}

puts "Client Name:"
client_name=gets.chomp
info[:name]=client_name

puts "Client Age:"
client_age=gets.chomp.to_i
info[:age]=client_age

puts "Do you have children?"
client_children=gets.chomp
info[:children]=client_children

puts "Decor Preference:"
client_decor=gets.chomp
info[:decor]=client_decor

puts "Budget (Value only):"
client_budget=gets.chomp.to_i
info[:budget]=client_budget


if
  puts "Is there any more information you would like to update? If so please enter the key. Otherwise type none."
  gets.chomp !="none"
  client_key=gets.chomp.to_sym
  puts "What do you want to update it to?"
  client_value_update=gets.chomp
  info[client_key]=client_value_update
  puts info
else
  puts info
end





