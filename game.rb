require './player'
require './turn'

def game
  p1 = Player.new('Player 1')
  p2 = Player.new('Player 2')

  players = [p1, p2]
  counter = 0

  def newRound(player)
    turn = Turn.new(player)
    turn.turn
    
  end
  
  def switchPlayer(counter)
    if counter == 0
      counter = 1
    else
      counter = 0
    end
    counter
  end

  while p1.life > 0 && p2.life > 0
    newRound(players[counter])
    puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
    puts '----- NEW TURN -----'
    counter = switchPlayer(counter)
  end
  if p1.life == 0
    puts "... some time later ..."
    puts "Player 2 wins with a score of #{p2.life}/3"
    puts "------ GAME OVER ------"
  end
  if p2.life == 0
    puts "... some time later ..."
    puts "Player 1 wins with a score of #{p1.life}/3"
    puts "------ GAME OVER ------"
    puts "Good bye!"
  end

end