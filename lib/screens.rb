module Screens
  def Screens.main_menu(screenfeed)
    system ('clear')
    Utils.line_bar(2, 75)
    Utils.place_space
    puts "Welcome to Guesser, best of luck!!"
    Utils.line_bar(2, 75)
    puts "   WOW     GUESSER     SUCH MYSTERY    MANY NUMBER"
    Utils.line_bar(1, 75)
    Utils.place_space
    puts "1  -  Play a Game of Guesser"
    Utils.place_space
    puts "2  -  See Game Stats (Inactive)"
    Utils.place_space
    puts "X  -  E(X)it the game"
    Utils.line_bar(1, 75)
    Utils.place_space
    puts screenfeed
    Utils.line_bar(1, 75)
  end

  def Screens.game_screen(tries, line_1, line_2, line_3, line_4)
    system ('clear')
    Utils.line_bar(2, 75)
    Utils.place_space
    puts "Currently Guessing against Compu-bot"
    Utils.line_bar(2, 75)
    print line_4
    puts
    print line_3
    puts
    print line_2
    puts
    print line_1
    puts
    Utils.line_bar(1, 75)
    Utils.place_space
    print "Previous Guesses"
    Utils.place_space
    print tries
    puts
    Utils.line_bar(1, 75)
  end

  def Screens.win_screen
    system ('clear')
    Utils.line_bar(2, 75)
    Utils.place_space
    puts "You've guessed correctly, tubular!!"
    Utils.line_bar(2, 75)
    Utils.place_space
    puts "Returning to the main menu"
    Utils.line_bar(2, 75)
    Utils.interceptor
  end

  def Screens.lose_screen
    system ('clear')
    Utils.line_bar(2, 75)
    Utils.place_space
    puts "CONGRATULATIONS!!  YOU LOSE!!"
    Utils.line_bar(2, 75)
    Utils.place_space
    puts "Returning to the main menu"
    Utils.line_bar(2, 75)
    Utils.interceptor
  end
end
