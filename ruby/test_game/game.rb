class Game
  
  def initialize(word)
    @word = []
    @word = word.split(//)
    @progress = Array.new(@word.length, '_')
    @guesses = []
    @limit = word.length
    @counter = 0
    @tries = @limit - @counter
  end

  def guess(letter)
    while @counter < @limit
      while letter.length > 1 || letter.length <= 0
        p "Just one letter will do"
        letter = gets.chomp
      end
      if @word.include?(letter)
        idx = @word.each_index.select{|x| @word[x] == letter}
        idx.each do |x|
          @progress[x] = letter
        end
        p @progress
   
        if @word == @progress
          puts "Congratulations, you've won"
          break
        else
          puts "Next guess please."
          letter = gets.chomp
        end
      else
        @guesses << letter
        puts "Sorry try again!"
        letter = gets.chomp
      end
  
      if @progress.include?(letter) || @guesses.include?(letter)
        puts "You already guessed that. Try something else"
        letter = gets.chomp
      else
        @counter += 1
      end

      if @counter == @limit
        p "Game over, you fail"
      end
    end
  end

end

puts "User 1: Enter a word"
word = gets.chomp
n_game = Game.new(word)

puts "User 2: Try guessing the word one letter at a time"
letter = gets.chomp

n_game.guess(letter)
