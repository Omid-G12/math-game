require './player'

class Turn
  attr_accessor :currentPlayer, :a, :b
  def initialize(player)
    @currentPlayer = player
    @a = rand(1..20)
    @b = rand (1..20)
  end 

  def turn
    puts "#{@currentPlayer.name}: What does #{@a} plus #{@b} equal?"
    print '> '
    answer = gets.chomp
    int = answer.to_i
    if @a + @b == int
      puts "#{@currentPlayer.name}: YES! You are correct."
    else
      puts "#{@currentPlayer.name}: Seriously? No!"
      @currentPlayer.life -= 1
    end
    
  end
end

# def turn(player, a, b)
#   puts "#{player.name}: What does #{a} plus #{b} equal?"
#   answer = gets.chomp
#   int = answer.to_i
#   if turn.a + turn.b == int
#     puts "#{player.name}: YES! You are correct."
#   else
#     puts "#{player.name}: Seriously? No!"
#     player.life -= 1
#   end
  
# end