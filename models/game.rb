class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
    @logic = {
    'rock' => {
      'rock' => 'Draw!',
      'paper' => "Player 2 wins with Paper!",
      'scissors' => "Player 1 wins with Rock!"
    },
    'paper' => {
      'rock' => 'Player1 wins with Paper!',
      'paper' => "Draw!",
      'scissors' => "Player 2 wins with Scissors!"
    },
    'scissors' => {
      'rock' => 'Player 2 wins with Rock!',
      'paper' => "Player 1 wins with Scissors!",
      'scissors' => "Draw!"
      }
    }
  end


  def compare
    return @logic[@hand1][@hand2]
  end

end
