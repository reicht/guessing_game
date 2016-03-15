module Eval
  def Eval.checker(guess, value, numbers)
    if numbers[guess-1] == 0
      if guess == value
        puts "Congratulations, you win"
        Utils.interceptor
      elsif guess > value
        puts "Lower"
        Utils.interceptor
        true
      elsif guess < value
        puts "Higher"
        Utils.interceptor
        true
      else
        puts "ERROR"
        Utils.interceptor
      end
    else
      puts "Are you sure you want to guess that number?  You've already failed with it..."
      Utils.interceptor
      false
    end
  end
end
