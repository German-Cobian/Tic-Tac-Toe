require './lib/player'
require './lib/board'

describe Player do
  describe '#turn' do
    it 'sets chosen position to player token' do
      board = Board.new
      player = Player.new('German', 'X', board)
      expect(player.turn(4)).to eql('X')
    end
  end
end
