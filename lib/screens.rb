module Screens
  def Screens.main_menu
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
    puts "Feedback Placeholder"
    Utils.line_bar(1, 75)
  end

  def Screens.game_screen(numbers, tries)
    system ('clear')
    Utils.line_bar(2, 75)
    Utils.place_space
    puts "Currently Guessing against Compu-bot"
    Utils.line_bar(2, 75)
    print numbers[0,25]
    puts
    print numbers[25,25]
    puts
    print numbers[50,25]
    puts
    print numbers[75,25]
    puts
    Utils.line_bar(1, 75)
    Utils.place_space
    print "Previous Guesses"
    Utils.place_space
    print tries
    puts
    Utils.line_bar(1, 75)
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
