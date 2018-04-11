require 'rspec'
require 'pry'

def anagrammer(str_1, str_2)
  str_1 = str_1.chars.sort
  str_2 = str_2.chars.sort
  str_1 == str_2 ? true : false
end

describe "given two words" do
  it "finds out if they are anagrams of one another" do
    str_1 = "abcdefg"
    str_2 = "bcdefga"

    expect(anagrammer(str_1, str_2)).to eq(true)
  end
end
