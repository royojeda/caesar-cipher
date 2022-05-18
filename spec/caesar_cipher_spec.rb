require './lib/script.rb'

describe "#caesar_cipher" do
  it "prints the output of shifting a string by a positive offset" do
    expect(caesar_cipher('ghijkl', 5)).to eql('lmnopq')
  end
end
