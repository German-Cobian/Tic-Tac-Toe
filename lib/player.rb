class Player
  attr_reader :name, :token, :board

  def initialize(name, token, board)
    @name = name
    @token = token
    @board = board
  end

  def turn(location)
    @board.update_board(location, @token)
  end
end
