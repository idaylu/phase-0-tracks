=begin

Takes in input of spy name
Uses split method to divide first and last name
Take both names and switch places
Iterate through letters and changes vowels to the next vowel down
Iterate through letters and changes consonants to the next consonant down.

=end

def spy_name
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
vowels = ["a","e","i","o","u"]

puts "Please enter name:"
real_name=gets.chomp.downcase
fake_name=real_name.split(' ').reverse.join(' ')

fake_name= fake_name.split('')
next_letter_name= fake_name.map! do |letter_consonant|
  if consonants.include?(letter_consonant)
    consonants.rotate(1) [consonants(letter_consonant)]
  else vowels.include?(letter_vowel)
    vowels.rotate(1)[vowels(letter_vowel)]
  end
end
next_letter_name.join
end

spy_name



