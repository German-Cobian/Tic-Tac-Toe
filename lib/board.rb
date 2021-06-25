# rubocop:disable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity

class Board
  attr_reader :board

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display
    %(
        #{@board[0]}    |    #{@board[1]}    |    #{@board[2]}
      ---------------------------
        #{@board[3]}    |    #{@board[4]}    |    #{@board[5]}
      ---------------------------
        #{@board[6]}    |    #{@board[7]}    |    #{@board[8]})
  end

  def update_board(location, token)
    @board[location] = token
  end

  def position_taken?(location)
    if (@board[location] == 'X') || (@board[location] == 'O')
      true
    else false
    end
  end

  def draw?
    @board.all?(String)
  end

  def win_check?
    if @board[0] == @board[1] && @board[1] == @board[2]
      true
    elsif @board[3] == @board[4] && @board[4] == @board[5]
      true
    elsif @board[6] == @board[7] && @board[7] == @board[8]
      true
    elsif @board[0] == @board[3] && @board[3] == @board[6]
      true
    elsif @board[1] == @board[4] && @board[4] == @board[7]
      true
    elsif @board[2] == @board[5] && @board[5] == @board[8]
      true
    elsif @board[0] == @board[4] && @board[4] == @board[8]
      true
    elsif @board[2] == @board[4] && @board[4] == @board[6]
      true
    else false
    end
  end
end
# rubocop:enable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
