require 'player'

describe Player do 

	context "when initialized" do

	  it "has an array of ships" do
		expect(subject.ships).to be_empty
		end

	end

		it "places ships" do
		expect(subject).to respond_to(:place).with(1).argument
		end

end


# 	it "has ships array" do
# 	expect(subject.ships).to be_empty
# 	end
