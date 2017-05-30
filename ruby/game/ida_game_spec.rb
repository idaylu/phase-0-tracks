require_relative 'ida_game'

describe Game do
  let (:game) {Game.new("guess_word")}

  it "checks letter guessed with word" do
    expect(game.check("h")).to eq (nil)
  end

  it "checks game guesses left"
  game.guess_count=2
  do expect(game.guess_amount).to eq (game.game_over=false)
  end

end