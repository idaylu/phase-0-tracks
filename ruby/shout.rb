# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# require_relative 'shout'
# p Shout.yell_angrily("Oh Man")
# p Shout.yell_happily("Oh Man")
# p Shout.singleton_methods

module Shout
  def joy(words)
    p "#{words}!! :)"
  end
end

class Adult
  include Shout
end

class Child
  include Shout
end

#driver code
adult=Adult.new
adult.joy("Congrats")

child=Child.new
child.joy("Congrats")
