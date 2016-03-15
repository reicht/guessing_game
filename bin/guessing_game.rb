require_relative '../../../../../usefulfiles/utilities/futilities.rb'
require_relative'../lib/player.rb'
require_relative'../lib/screens.rb'
require_relative'../lib/eval.rb'

class Game
  def initialize
    @human = Player.new("player")
    @bot = Player.new("bot")
    @homefeed = ""
    selector
  end

  def selector
    Screens.main_menu(@homefeed)
    what_do = Utils.get_response("What to do?")
    if what_do.to_i == 1
      reset_game
      game_play
    elsif what_do.to_i == 2
    elsif what_do.upcase == "X"
      exit
    end
  end

  def game_play
    Screens.game_screen(@tries, @line_1, @line_2, @line_3, @line_4)
    guess = Utils.get_response("What number do you guess?").to_i
    valid = Eval.checker(guess, @bot.value, @human.numbers)
    @human.track_guess(guess)
    if valid == "higher" || valid = "lower"
      line_updater(guess, valid)
      @tries.push(guess)
      @counter += 1
    elsif valid == true
      @homefeed = "You just guessed " + @bot.value.to_s + " correctly!"
      Screens.win_screen
      selector
    end
    if @counter == 5
      @homefeed = "You just failed to guess " + @bot.value.to_s + "!"
      Screens.lose_screen
      selector
    end
    game_play
  end

  def line_updater(guess, diff)
    @line_4 = @line_3
    @line_3 = @line_2
    @line_2 = @line_1
    @line_1 = "You guessed " + guess.to_s + " which is " + diff.to_s + " than the target."
  end

  def reset_game
    @bot.randomize
    @human.clear_board
    @tries = []
    @counter = 0
    @line_4 = ""
    @line_3 = ""
    @line_2 = ""
    @line_1 = ""
  end
end

Game.new
