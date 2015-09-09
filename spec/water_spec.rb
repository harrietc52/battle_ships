require 'water'

describe Water do

    it "water can be struck" do
      water = Water.new
      expect(water.struck).to eq("Boom!")
    end
end
