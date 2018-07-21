require 'computer'
require 'player'
require 'result'


class Game
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end
  
  def result
    res = Result.new
    if res.rules[@player.hand.to_sym].include? @computer.hand
      'Player wins'
    elsif res.rules[@computer.hand.to_sym].include? @player.hand 
      'Computer wins'
    else
      'draw'
    end
  end
end

