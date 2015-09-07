require './lib/water'

describe Water do

  it "return status of water" do
    expect(subject).not_to be_hit
  end

  it "responds to hit" do
    expect(subject.hit).to eq true
  end

end
