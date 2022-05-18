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

  it "prints the output of shifting a string by a negative offset with wrapping" do
    expect(caesar_cipher('bbccddee', -4)).to eql('xxyyzzaa')
  end

  it "prints the output of shifting a string with uppercase characters by a positive offset with wrapping" do
    expect(caesar_cipher('aBcYzX', 7)).to eql('hIjFgE')
  end
end
