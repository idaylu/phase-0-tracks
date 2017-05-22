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

puts "Is there any more information you would like to update? If so please enter the key name. Otherwise type 'none'."
update_info=gets.chomp.to_sym
puts info

  if update_info !=:none
  end

  if update_info =
  update_info =gets.chomp
  p update_info
  puts "What do you want to update it to?"
  client_value_update=gets.chomp
  info[update_info]=client_value_update
  puts info
end



