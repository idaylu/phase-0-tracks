class Santa
  attr_accessor :age, :ethnicity, :reindeer_ranking, :gender, :fur

  def initialize(gender,ethnicity,fur)
    p "Initializing Santa instance..."
    @gender=gender
    @ethnicity=ethnicity
    @fur=fur
    @reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age=0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday(current_age)
    @age=current_age+1
  end

  def get_mad_at(reindeer_name)
    index=@reindeer_ranking.index(reindeer_name)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(index))
  end
end

#Driver Code
# santa=Santa.new("male","asian","gold")
# santa.celebrate_birthday(5)
# santa.speak
# santa.eat_milk_and_cookies("oatmeal")
# santa.get_mad_at("Vixen")
# santa.age="5"
# santa.ethnicity="Latino"
# p santa.age
# p santa.ethnicity

# santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_fur=["red","blue","green","metallic","marble","spotted","grey"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i], example_fur[i])
# end
#p santas

#Release 4
random_santa=Santa.new(example_genders.sample,example_ethnicities.sample,example_fur.sample)
random_santa.age=rand(0..140)
puts "Santa Ethnicity: #{random_santa.ethnicity}."
puts "Santa Gender: #{random_santa.gender}."
puts "Santa Fur: #{random_santa.fur}."
puts "Santa Age: #{random_santa.age}."





