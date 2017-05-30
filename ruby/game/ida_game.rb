=begin
Peusdocode
Create class for the game
Create method for
-Initialize
-Check guess letter
-Guess Number
-Current State
-Message with Win/Lose message
Create User interface
=end

class Game
  attr_accessor :guess_word, :game_over, :guess_count, :word

  def initialize (guess_word)
    @guess_word=guess_word
    @game_over=false
    @repeat_guess=[]
    @guess_number=0
    @word="-"*@word.length
  end

  def check(letter)
    if @repeat_guess.include?(letter)
      puts "Already guessed this. Try a different letter."
    else
      @guess_number+=1
      @repeat_guess<<letter
    end
    if @guess_word.include?(letter)
      index=@guess_word.index(letter)
      @word[index]=letter
      @repeat_guess<<letter
    end
  end

  def guess_amount
    if @guess_number < @guess_word.length
    else
      puts "Oh no, looks like no more guesses allowed."
      @game_over=true
  end

  def current_state
    puts "This is your current guess #{@word}."
  end

  def win_check
    if @guess_word==@word
      puts "You got it! Winner!"
      @game_over=true
  end

end

#User Interface

puts "Welcome to Guess the Word! Enter word (in all lowercase):"
word=gets.chomp!
game=Game.new(guess_word)

while !game.game_over
  puts "Guess a letter. Try not to repeat!"
  guess=gets.chomp!
  game.guess_amount
  game.check(guess)
  game.current_state
  game.win_check
end
