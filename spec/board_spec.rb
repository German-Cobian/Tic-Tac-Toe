require_relative '../lib/board'
require_relative '../lib/player'

describe Board do
  describe '#display' do
    it 'Prints board grid' do
      board = Board.new
      @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      expect(board.display).to eq(%(
        #{@board[0]}    |    #{@board[1]}    |    #{@board[2]}
      ---------------------------
        #{@board[3]}    |    #{@board[4]}    |    #{@board[5]}
      ---------------------------
        #{@board[6]}    |    #{@board[7]}    |    #{@board[8]}))
    end
  end
end

describe '#update_board' do
  it 'updates chosen position to player assigned token' do
    board = Board.new
    expect(board.update_board(4, 'X')).to eql('X')
  end
end

describe '#position_taken?' do
  it 'returns true if position is already taken' do
    board = Board.new
    player = Player.new('German', 'X', board)
    player.turn(6)
    expect(board.position_taken?(6)).to be(true)
  end
  it 'returns false if position is not taken' do
    board = Board.new
    player = Player.new('Julius', 'O', board)
    player.turn(7)
    expect(board.position_taken?(3)).to be(false)
  end
end

describe '#draw?' do
  it 'returns true if all elements in board are a string' do
    board = Board.new
    player = Player.new('German', 'O', board)

    9.times { |index| player.turn(index) }
    expect(board.draw?).to be(true)
  end

  it 'returns false if not all elements in board are a string' do
    board = Board.new
    player = Player.new('German', 'O', board)

    8.times { |index| player.turn(index) }
    expect(board.draw?).to be(false)
  end
end

describe '#win_check?' do
  it 'returns true if token has three matches horizontally' do
    board = Board.new
    player = Player.new('German', 'X', board)
    location = [0, 1, 2]
    location.each { |val| player.turn(val) }
    expect(board.win_check?).to be(true)
  end
  it 'returns true if token has three matches horizontally' do
    board = Board.new
    player = Player.new('Julius', 'O', board)
    location = [3, 4, 5]
    location.each { |val| player.turn(val) }
    expect(board.win_check?).to be(true)
  end
  it 'returns true if token has three matches horizontally' do
    board = Board.new
    player = Player.new('German', 'X', board)
    location = [6, 7, 8]
    location.each { |val| player.turn(val) }
    expect(board.win_check?).to be(true)
  end
  it 'returns true if token has three matches horizontally' do
    board = Board.new
    player = Player.new('Julius', 'O', board)
    location = [0, 3, 6]
    location.each { |val| player.turn(val) }
    expect(board.win_check?).to be(true)
  end
  it 'returns true if token has three matches horizontally' do
    board = Board.new
    player = Player.new('German', 'X', board)
    location = [1, 4, 7]
    location.each { |val| player.turn(val) }
    expect(board.win_check?).to be(true)
  end
  it 'returns true if token has three matches horizontally' do
    board = Board.new
    player = Player.new('Julius', 'O', board)
    location = [2, 5, 8]
    location.each { |val| player.turn(val) }
    expect(board.win_check?).to be(true)
  end
  it 'returns true if token has three matches horizontally' do
    board = Board.new
    player = Player.new('German', 'X', board)
    location = [0, 4, 8]
    location.each { |val| player.turn(val) }
    expect(board.win_check?).to be(true)
  end
  it 'returns true if token has three matches horizontally' do
    board = Board.new
    player = Player.new('Julius', 'O', board)
    location = [2, 4, 6]
    location.each { |val| player.turn(val) }
    expect(board.win_check?).to be(true)
  end
  it 'returns false if tokens do not line up either horizontally, vertically, or diagonally' do
    board = Board.new
    player = Player.new('German', 'X', board)
    location = [0, 5, 7]
    location.each { |val| player.turn(val) }
    expect(board.win_check?).to be(false)
  end
end
