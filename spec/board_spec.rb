require './lib/board.rb'

describe Board do
  describe "#place" do
    it { is_expected.to respond_to(:place).with(1).argument}
  end
end
