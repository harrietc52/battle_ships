# require 'board'
#
# describe Board do
#   let(:ship) {double :ship}
#   let(:water){ double :water}
#   let(:board) { Board.new(water)}
#
#   it "is initialized with water" do
#     expect(board.content).to eq water
#   end
#
#   it "not shot when initialized" do
#     expect(board).not_to be_shot
#   end
#
#   it "cell can be shot at" do
#     expect(board.content).to receive(:struck)
#     board.shoot!
#   end
#
#   it "can add ship when shot" do
#     board.add_ship(ship)
#     expect(board.content).to eq ship
#   end
#
#   it "marked as shot after being shot at" do
#     expect(board.content).to receive(:struck)
#     board.shoot!
#     expect(board).to be_shot
#   end
#
#   it "is not able to be shot at twice" do
#       expect(board.content).to receive(:struck)
#       board.shoot!
#       expect(board.shoot!).to eq("Already shot here")
#   end
# end
