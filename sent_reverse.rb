require 'rspec'
require 'pry'

def sentence_reverser(str)
  str.split.reverse.join(' ')
end

describe "syntax reverse" do
  it "reverses a text" do
    test = "backwards am I"
    expect(sentence_reverser(test)).to eq("I am backwards")

  end
end
