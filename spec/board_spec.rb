require './lib/board.rb'

describe Board do
  describe 'New Game' do
    it 'Creates an empty grid' do
      is_expected.to respond_to(:new_game)
    end
    it 'Creates a 3x3 grid' do
      expect(subject.new_game).to eq([[0,0,0],[0,0,0],[0,0,0]])
    end
    it 'Place ship on grid' do
      subject.place_ship(1, 1)
      expect(subject.grid[1][1]).to eq("X")
    end
  end
end
