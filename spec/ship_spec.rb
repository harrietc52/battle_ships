require "./lib/ship"

describe Ship do

  subject { Ship.new(1, [0,0], 'N')}

  ship1 = Ship.new(3, [0,0], 'N')
  ship2 = Ship.new(3, [4,4], 'W')

  context "#orientation" do

    it 'occupies the right cells when created facing north' do
      expect(ship1.position).to eq([[0,0], [0,1], [0,2]])
    end

    it 'occupies the right cells when created facing west' do
      expect(ship2.position).to eq([[4,4], [3,4], [2,4]])
    end

  end

  context "#hits" do

    it "ship is initialized with no hits" do
      expect(subject.damage).to eq(0)
    end

    it "can be shot at" do
      expect(subject).to respond_to(:fire).with(1).argument
    end

    it "it reports being hit" do
      expect(ship1.fire([0,1])).to eq true
    end

    it "it reports being missed" do
      expect(ship1.fire([0,3])).to eq false
    end

    it "position array no longer contains hit cells" do
      expect(ship1.position).not_to include([0,1])
    end

    it "will count hits when recieved" do
      ship1.fire([0,0])
      expect(ship1.damage).to eq(2)
    end

    it "can sink ship" do
       ship1.fire([0,2])
      expect(ship1.sunk?).to be true
    end

  end

end

  # describe "can create different ships" do
  #
  #   it "can create patrol boat" do
  #     pb = Ship.patrol_boat
  #     expect(pb.size).to eq 2
  #   end
  #
  #   it "can create destroyer" do
  #     dest = Ship.destroyer
  #     expect(dest.size).to eq 3
  #   end
  #
  #   it "can create submarine" do
  #     sub = Ship.submarine
  #     expect(sub.size).to eq 3
  #   end
  #
  #   it "can create battleship" do
  #     bs = Ship.battleship
  #     expect(bs.size).to eq 4
  #   end
  #
  #   it "can create aircraft carrier" do
  #     ac = Ship.aircraft_carrier
  #     expect(ac.size).to eq 5
  #   end
  #
  # end
