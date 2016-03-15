require_relative '../../../../../usefulfiles/utilities/futilities.rb'
require_relative'../lib/player.rb'
require_relative'../lib/screens.rb'
require_relative'../lib/eval.rb'

class Game
  def initialize
    @human = Player.new("player")
    @bot = Player.new("bot")
    selector
  end

  def selector
    Screens.main_menu
    what_do = Utils.get_response("What to do?")
    if what_do.to_i == 1
      @human.clear_board
      @tries = []
      @counter = 0
      game_play
    elsif what_do.to_i == 2
    elsif what_do.upcase == "X"
      exit
    end
  end

  def game_play
    Screens.game_screen(@human.numbers,@tries)
    guess = Utils.get_response("What number do you guess?").to_i
    valid = Eval.checker(guess, @bot.value, @human.numbers)
    @human.track_guess(guess)
    if valid == true
      @tries.push(guess)
      @counter += 1
    end
    if @counter == 5
      Screens.lose_screen
      selector
    end
    game_play
  end
end

Game.new
