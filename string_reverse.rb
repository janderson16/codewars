# given a string, reverse it

require 'rspec'
require 'pry'

def str_reverse(str)
  # str.reverse
  new_word = []
  index = str.chars.length
  until index == 0 do
    new_word << str[index - 1]
    index -=1
  end
  new_word.join('')
end

describe "given a string of characters" do
  it "returns the string in reverse" do
    test = "home depot"

    expect(str_reverse(test)).to eq("toped emoh")
  end
end
