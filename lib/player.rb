class Player
  attr_accessor :value, :numbers
  def initialize(type)
    if type == "bot"
      @value = rand(1..100)
    elsif type == "player"
      @numbers = []
      100.times do |x|
        @numbers.push(0)
      end
    end
  end

  def clear_board
    @numbers = []
    100.times do |x|
      @numbers.push(0)
    end
  end

  def track_guess(guess)
    @numbers[guess.-1] = guess
  end
end
