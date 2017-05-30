module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :)"
  end
end

require_relative 'shout'
p Shout.yell_angrily("Oh Man")
p Shout.yell_happily("Oh Man")
p Shout.singleton_methods
