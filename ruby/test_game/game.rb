class Game
  
  attr_reader :remaining_guesses, :guesses
  
  def initialize(word)
    @word = []
    @word = word.split(//)
    @progress = ["_" * word.length ]
    @guesses = 0 
    @remaining_guesses = word.length
    @won = true
  end
  
  def print_check(letter)
    letter.each do |x|
      if @word.include? x 
        p x 
      else
        p '_'
        @won = false
      end
    end
    
    puts "~~~~~~~~~~~~~~~~~~~~"
    return @won
  end
  
end

puts "User 1: Enter a word"
secret = gets.chomp 
n_game = Game.new(secret)

puts "User 2: you have #{n_game.remaining_guesses} attempts to guess correctly."

while n_game.guesses < n_game.remaining_guesses
  guess = getks.chomp
  n_game.print_check(guess)
end
