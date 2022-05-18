require './lib/script.rb'

describe "#caesar_cipher" do
  it "prints the output of shifting a string by a positive offset" do
    expect(caesar_cipher('ghijkl', 5)).to eql('lmnopq')
  end

  it "prints the output of shifting a string by a negative offset" do
    expect(caesar_cipher('pqrstuv', -8)).to eql('hijklmn')
  end

  it "prints the output of shifting a string by a positive offset with wrapping" do
    expect(caesar_cipher('vwxy', 6)).to eql('bcde')
  end
end
